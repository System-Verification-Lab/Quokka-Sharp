/*****************************************************************************************[Main.cc]
 *
 * GPMC -- Copyright (c) 2017-2022, Kenji Hashimoto (Nagoya University, Japan)
 *

GPMC sources are based on Glucose 3.0 and SharpSAT 12.08.1.
We will follow the permissions and copyrights of them.

-----------------------------------------------------------

 * SharpSAT https://sites.google.com/site/marcthurley/sharpsat

MIT License

Copyright (c) 2019 marcthurley

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

-----------------------------------------------------------

 Glucose -- Copyright (c) 2009, Gilles Audemard, Laurent Simon
				CRIL - Univ. Artois, France
				LRI  - Univ. Paris Sud, France

Glucose sources are based on MiniSat (see below
 copyrights). Permissions and copyrights of
Glucose are exactly the same as Minisat on which it is based on. (see below).

---------------

Copyright (c) 2003-2006, Niklas Een, Niklas Sorensson
Copyright (c) 2007-2010, Niklas Sorensson

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or
substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT
OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 **************************************************************************************************/

#include <errno.h>

#include <signal.h>
#include <zlib.h>
#include <gmpxx.h>
#include <mpfr/mpreal.h>

#include "utils/System.h"
#include "utils/ParseUtils.h"
#include "utils/Options.h"
#include "core/Dimacs.h"
#include "core/Config.h"
#include "preprocessor/Preprocessor.h"
#include "core/Counter.h"


using namespace Glucose;
using namespace GPMC;

//=================================================================================================
static Solver *counter;

// Terminate by notifying the solver and back out gracefully. This is mainly to have a test-case
// for this feature of the Solver as it may take longer than an immediate call to '_exit()'.
static void SIGINT_interrupt(int signum) {
	printf("c o\n");
	printf("c o *** INTERRUPTED by signal %d ***\n", signum);
	printf("c o Elapsed time %.2lf s\n", cpuTime());
	fflush(stdout);
	if(counter != NULL)
		counter->interrupt();
	else
		_exit(1);
}

// Note that '_exit()' rather than 'exit()' has to be used. The reason is that 'exit()' calls
// destructors and may cause deadlocks if a malloc/free function happens to be running (these
// functions are guarded by locks for multithreaded use).
static void SIGINT_exit(int signum) {
	printf("c o\n");
	printf("c o *** INTERRUPTED by signal %d ***\n", signum);
	printf("c o Elapsed time %.2lf s\n", cpuTime());
	fflush(stdout);
	_exit(1); }

static void SetSigAct() {
	signal(SIGINT,  SIGINT_interrupt);  //  2, SIGINT
	// signal(SIGABRT, SIGINT_exit);       //  6, SIGABRT
	signal(SIGSEGV, SIGINT_exit);       // 11, SIGSEGV
	signal(SIGTERM, SIGINT_interrupt);  // 15, SIGTERM
	signal(SIGXCPU, SIGINT_exit);
}
//=================================================================================================
static mpfr::mpreal Log10(const mpz_class& num) {
  assert(num >= 0);
  if (num == 0) {
    return -std::numeric_limits<double>::infinity();
  }
  mpfr::mpreal num1(num.get_mpz_t());
  return mpfr::log10(num1);
}
static void PrintLog10(const mpz_class& num) {
  cout<<"c s log10-estimate "<<Log10(num)<<endl;
}
static void PrintLog10(const mpfr::mpreal& num) {
  cout<<"c s log10-estimate "<<mpfr::log10(num)<<endl;
}
static void printMode(Mode mode) {
	switch(mode) {
	case MC:	printf("c s type mc\n");break;
	case WMC:	printf("c s type wmc\n");break;
	case PMC:	printf("c s type pmc\n");break;
	case WPMC:	printf("c s type wpmc\n");break;
	}
}
static void printResult(bool sat, Mode mode, const mpz_class& result) {
	printf("s %s\n", sat ? "SATISFIABLE" : "UNSATISFIABLE");
	printMode(mode);
	if(!sat) {
		printf("c s exact arb int 0\n");
		printf("c s log10-estimate -inf\n");
	} else {
		cout << "c s exact arb int " << result << endl;
		cout.precision(15);
		PrintLog10(result);
	}
}
static void printResult(bool sat, Mode mode, const mpfr::mpreal& result) {
	printf("s %s\n", sat ? "SATISFIABLE" : "UNSATISFIABLE");
	printMode(mode);
	if(!sat) {
		printf("c s exact double prec-sci 0\n");
		printf("c s log10-estimate -inf\n");
	} else {
		int precision = mpfr::bits2digits(mpfr::mpreal::get_default_prec());
		cout.precision(precision);
		if(precision > 15) {
			cout << "c o precision " << precision << endl;
			cout << "c s exact double prec-sci " <<  result << endl;
		} else {
			cout << "c s exact double prec-sci " <<  result << endl;
		}
		cout.precision(15);
		PrintLog10(result);
	}
}

template <class T_data>
static void doDNNF(Counter<T_data>& S) {
#ifdef DEBUG
	printf("c o Elapsed time %.2f s\nc o\n", cpuTime()); fflush(stdout);
	cout << "c o Model counting from d-DNNF" << endl;
	T_data result = S.mcDDNNF();

	// For Debug.
	printResult(S.sat, S.config.mode, result);
#endif
	if(S.config.nnf_outfile != "NULL") {
		printf("c o Elapsed time %.2f s\nc o\n", cpuTime()); fflush(stdout);
		S.writeNNF();
	}
}

//=================================================================================================
// Main:
template <class T_data>
void main_mc(Counter<T_data>& S, string filename)
{
	// Loading input
	if (filename.empty()) {
		printf("c o Reading from standard input... Use '--help' for help.\n");
		S.load(std::cin);
	}
	else {
		cout << "c o Reading from the file " << filename << " ..." << endl;
		std::ifstream in(filename);
		if (in) {
			S.load(in);
			in.close();
		}
		else {
			std::cerr << "Cannot open file:" << filename << std::endl;
			exit(1);
		}
	}
	printf("c o Reading finished.\n");
	printf("c o Elapsed time %.2lf s\nc o\n", cpuTime());
	fflush(stdout);

	// Simplifying
	printf("c o Simplification starts...\n");
	bool done = S.preprocess();
	printf("c o Simplification finished.\n");
	printf("c o Elapsed time %.2lf s\nc o\n", cpuTime());
	fflush(stdout);

	if(done) {
		printf("c o Solved by simplification.\n");
		S.printStats();
		printf("c o [Result]\n");
		printResult(S.sat, S.config.mode, S.getMC());
		if(S.config.ddnnf) doDNNF(S);
		return;
	}

	// Calculating extra var scores
	printf("c o Preparing extra variable scores ...\n");
	S.setExtraVarScore();
	printf("c o Elapsed time %.2lf s\nc o\n", cpuTime());

	// Counting
	counter = (Solver*)&S;
	printf("c o Counting starts ...\n");fflush(stdout);
	bool suc = S.countModels();
	S.printStats();
	printf("c o [Result]\n");
	if(suc) {
		printResult(S.sat, S.config.mode, S.getMC());
		counter = NULL;
		if(S.config.ddnnf) doDNNF(S);
	}
	else
		printf("s UNKNOWN\n");
	fflush(stdout);
}

int main(int argc, char** argv)
{

	try {
		double start = realTime();

		setUsageHelp("c USAGE: %s [options] <input-file>\n");
		// setUsageHelp("c USAGE: %s [options] <input-file> <result-output-file>\n\n  where input may be either in plain or gzipped DIMACS.\n");
		// printf("This is MiniSat 2.0 beta\n");

#if defined(__linux__) && defined(_FPU_EXTENDED) && defined(_FPU_DOUBLE) && defined(_FPU_GETCW)
		fpu_control_t oldcw, newcw;
		_FPU_GETCW(oldcw); newcw = (oldcw & ~_FPU_EXTENDED) | _FPU_DOUBLE; _FPU_SETCW(newcw);
		printf("c o WARNING: for repeatability, setting FPU to use double precision\n");
#endif
		// Extra options:
		//
		IntOption    verb("MAIN", "verb",   "Verbosity level (0=silent, 1=some).", 1, IntRange(0, 1));
		IntOption    cpu_lim("MAIN", "cpu-lim","Limit on CPU time allowed in seconds.\n", INT32_MAX, IntRange(0, INT32_MAX));
		IntOption    mem_lim("MAIN", "mem-lim","Limit on memory usage in megabytes.\n", INT32_MAX, IntRange(0, INT32_MAX));

		parseOptions(argc, argv, true);
		Configuration config;
		string filename = (argc == 1) ? "" : argv[1];

		if(verb) {
			printf("c o "GPMC_VERSION"\n");
			switch(config.cntr.mode) {
			  case MC:		printf("c o Mode: Model Counting\n"); break;
			  case WMC:	printf("c o Mode: Weighted Model Counting\n"); break;
			  case PMC:	printf("c o Mode: Projected Model Counting\n"); break;
			  case WPMC:	printf("c o Mode: Weighted Projected Model Counting\n"); break;
			}
			fflush(stdout);
		}

		// Use signal handlers that forcibly quit until the solver will be able to respond to
		// interrupts:
		SetSigAct();

		// Set limit on CPU-time:
		if (cpu_lim != INT32_MAX){
			rlimit rl;
			getrlimit(RLIMIT_CPU, &rl);
			if (rl.rlim_max == RLIM_INFINITY || (rlim_t)cpu_lim < rl.rlim_max){
				rl.rlim_cur = cpu_lim;
				if (setrlimit(RLIMIT_CPU, &rl) == -1)
					printf("WARNING! Could not set resource limit: CPU-time.\n");
			} }

		// Set limit on virtual memory:
		if (mem_lim != INT32_MAX){
			rlim_t new_mem_lim = (rlim_t)mem_lim * 1024*1024;
			rlimit rl;
			getrlimit(RLIMIT_AS, &rl);
			if (rl.rlim_max == RLIM_INFINITY || new_mem_lim < rl.rlim_max){
				rl.rlim_cur = new_mem_lim;
				if (setrlimit(RLIMIT_AS, &rl) == -1)
					printf("c o WARNING! Could not set resource limit: Virtual memory.\n");
			} }

		if(config.cntr.mode == MC || config.cntr.mode == PMC || config.cntr.natw) {
			Counter<mpz_class> S(config);
			main_mc(S, filename);
		} else {
			if(config.cntr.precision > 15)
				mpfr::mpreal::set_default_prec(mpfr::digits2bits(config.cntr.precision));

			Counter<mpfr::mpreal> S(config);
			main_mc(S, filename);
		}

		printf("c o \n");
		printf("c o GPMC Counting finished.\nc o\n");
		printf("c o CPU time    = %.6lf s\n", cpuTime());
		printf("c o Real time   = %.6lf s\n", realTime()-start);
		double mem_used = memUsedPeak();
		if (mem_used != 0)
			printf("c o Memory used = %.2f MB\n", mem_used);

		fflush(stdout);
		exit(0);

	} catch (const std::invalid_argument&) {
		printf("c o Invalid argument\n");
		exit(1);
	} catch (OutOfMemoryException&) {
		printf("c o INDETERMINATE (out of memory)\n");
		exit(1);
	} catch(std::bad_alloc& err) {
		printf("c o INDETERMINATE (bad_alloc exception)\n");
		printf("c o Elapsed time %.2lf s\n", cpuTime());
		double mem_used = memUsedPeak();
		if (mem_used != 0)
			printf("c o Memory used = %.2f MB\n", mem_used);
		exit(1);
    }
}
