import 'IObserver.dart';
import 'dart:math';

class MaxObserver implements IObserver {
  int _maxCPU = 0, _maxRAM = 0;

  @override
  void update(int CPU, int RAM) {
    _maxCPU = max(_maxCPU, CPU);
    _maxRAM = max(_maxRAM, RAM);

    print("""
Current Max CPU: $_maxCPU
Current Max RAM: $_maxRAM
""");
  }
}
