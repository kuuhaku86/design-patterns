import 'IPlayer.dart';

class Terrorist implements IPlayer {
  String? _task;

  @override
  void doMission() {
    print("Terrorist doing Task : $_task");
  }

  @override
  void assignTask(String mission) {
    _task = mission;
  }
}
