## INSTALLATION INSTRUCTIONS

# Install GPMC

In the GPMC directory replace the file "GPMC/core/Main.cc" by the one provide here.
Follow instructions in https://git.trs.css.i.nagoya-u.ac.jp/k-hasimt/GPMC to install GPMC.
Make sure the binary `gpmc` binary is in your environment path.

# Install QuiZX

Add measure_test.rs here to quizx/quizx/src/bin/ in the QuiZX directory.

Follow instructions in https://github.com/Quantomatic/quizx/blob/stabrank-v1/README.md to install QuiZX

After installing above tools,
please change paths of the tools in settings.py to your installation paths
```
QuiZX_PATH = your path + "/quizx/quizx/target/debug/measure_test"
GPMC_PATH = your path + "/GPMC"
``` 
Note that QuiZX_PATH should be the path of executable file of measure_test and GPMC_PATH should be the path of the project GPMC.

## Usage
Set the timeout in settings.py, and the unit is second here.
```
TIMEOUT = 30
```
Running the random circuits in run.py

```
python3 run.py 
```
You will have to enter the running mode
- mode = 0 for getting figure of qubit count scalability
- mode = 1 for getting figure of depth scalability
- mode = 2 for running a single case using WMC
- mode = 3 for running a single case using ZX

Then follow the instructions of the program to enter other needed information.
