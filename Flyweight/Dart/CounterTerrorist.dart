import 'IPlayer.dart';

class CounterTerrorist implements IPlayer {
  String? _task;

  @override
  void doMission() {
    print("Counter Terrorist doing Task : $_task");
  }

  @override
  void assignTask(String mission) {
    _task = mission;
  }
}
