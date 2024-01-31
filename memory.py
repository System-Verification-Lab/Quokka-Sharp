from queue import Queue, Empty
from resource import getrusage, RUSAGE_SELF
from threading import Thread

class ReturnValueThread(Thread):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.result = None

    def run(self):
        if self._target is None:
            return  # could alternatively raise an exception, depends on the use case
        try:
            self.result = self._target(*self._args, **self._kwargs)
        except Exception as exc:
            print(f'{type(exc).__name__}: {exc}', file=sys.stderr)  # properly handle the exception

    def join(self, *args, **kwargs):
        super().join(*args, **kwargs)
        return self.result

def memory_monitor(command_queue: Queue, poll_interval=1):
    old_max = 0
    while True:
        try:
            command_queue.get(timeout=poll_interval)
            return max_rss
        except Empty:
            max_rss = getrusage(RUSAGE_SELF).ru_maxrss
            if max_rss > old_max:
                old_max = max_rss
                # print(datetime.now(), 'max RSS', max_rss / 1024 / 1024, "MB")

