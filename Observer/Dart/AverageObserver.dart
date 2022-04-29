import 'IObserver.dart';

class Pair<T1, T2> {
  final T1 a;
  final T2 b;

  Pair(this.a, this.b);
}

class AverageObserver implements IObserver {
  double _averageCPU = 0, _averageRAM = 0;
  int _counter = 0;
  List<Pair<double, double>> _resources = [];

  @override
  void update(int CPU, int RAM) {
    _resources.add(Pair(CPU.toDouble(), RAM.toDouble()));
    double tempCPU = 0, tempRAM = 0;
    _counter++;

    for (var resource in _resources) {
      tempCPU += resource.a;
      tempRAM += resource.b;
    }

    _averageCPU = tempCPU / _counter;
    _averageRAM = tempRAM / _counter;

    print("""
Current Average CPU: $_averageCPU
Current Average RAM: $_averageRAM
""");
  }
}
