import 'Command.dart';

class LockingSystem {
  bool? _status;
  Command? _command;

  LockingSystem() {
    _status = false;
  }

  lock(Command command) {
    _command = command;
    _status = true;
  }

  unlock() {
    _status = false;
  }

  bool checkStatus() {
    if (_status == true) {
      print("The system currently used by: ");
      _command?.describe();
    }

    return _status ?? false;
  }
}
