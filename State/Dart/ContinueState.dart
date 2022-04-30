import 'IState.dart';

class ContinueState implements IState {
  @override
  void action() {
    print("Download continued");
  }
}
