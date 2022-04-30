import 'IState.dart';

class PauseState implements IState {
  @override
  void action() {
    print("Download paused");
  }
}
