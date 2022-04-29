import 'LockingSystem.dart';

abstract class Command {
  LockingSystem? mediator;
  String? target;

  Command(LockingSystem? lockingSystem, String? file) {
    mediator = lockingSystem;
    target = file;
  }

  void describe();

  execute() {
    if (mediator?.checkStatus() != true) {
      describe();
      mediator?.lock(this);
      print("Command executed");
    } else {
      print("Command not executed");
    }
  }

  finish() {
    mediator?.unlock();
  }
}
