import 'Thread.dart';

class ThreadPool {
  List<Thread> _threads = [];
  int _counter = 2;

  ThreadPool() {
    for (var i = 1; i <= 2; i++) {
      _threads.add(Thread(i));
    }
  }

  Thread get() {
    if (_threads.isEmpty) {
      _counter++;
      Thread thread = Thread(_counter);

      return thread;
    } else {
      return _threads.removeAt(0);
    }
  }

  void release(Thread thread) {
    _threads.add(thread);
  }
}
