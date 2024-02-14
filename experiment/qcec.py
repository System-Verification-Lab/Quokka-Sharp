from qiskit import QuantumCircuit
from mqt import qcec
import time
from queue import Queue
from memory import ReturnValueThread, memory_monitor
import sys

def main(qasm_file1, qasm_file2):
    # create your quantum circuit
    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    time.sleep(.5)

    # verify the equivalence of both circuits
    start = time.time()
    circ1 = QuantumCircuit.from_qasm_file(qasm_file1)
    circ2 = QuantumCircuit.from_qasm_file(qasm_file2)
    # result = qcec.verify(circ1, circ2,run_zx_checker=True, run_alternating_checker=False, run_simulation_checker=False, run_construction_checker= False)
    result = qcec.verify(circ1, circ2,run_zx_checker=False, run_alternating_checker=True, run_simulation_checker=True, run_construction_checker= False)
    end = time.time()

    # stop monitor thread for measuring mem
    queue.put('stop')
    max_rss = monitor_thread.join()
    print(  ' {"time" :', (end - start),
            ', "result" :', ' "' + str(result.equivalence) + '"',
            ', "MaxRSS":', max_rss / 1024 / 1024, "}")

if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2])