import 'Thread.dart';
import 'ThreadPool.dart';

void main(List<String> args) {
  ThreadPool threadPool = ThreadPool();
  List<Thread> threads = [];

  // Get thread
  for (var i = 0; i < 3; i++) {
    threads.add(threadPool.get());
  }

  // Describe the threads
  for (Thread thread in threads) {
    thread.describe();
  }

  // Release threads
  for (var i = 0; i < 3; i++) {
    Thread thread = threads.removeLast();
    threadPool.release(thread);
  }

  // Get thread
  for (var i = 0; i < 4; i++) {
    threads.add(threadPool.get());
  }

  // Describe the threads
  for (Thread thread in threads) {
    thread.describe();
  }
}