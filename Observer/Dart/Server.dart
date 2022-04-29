import 'IObserver.dart';
import 'dart:math';

class Server {
  int _CPU = 0, _RAM = 0;
  List<IObserver> _observers = [];

  void attach(IObserver observer) {
    _observers.add(observer);
  }

  void updateResources() {
    _CPU = Random().nextInt(100);
    _RAM = Random().nextInt(100);

    for (var observer in _observers) {
      observer.update(_CPU, _RAM);
    }
  }

  void describeResources() {
    print("""
Current CPU: $_CPU
Current RAM: $_RAM
""");
  }
}
