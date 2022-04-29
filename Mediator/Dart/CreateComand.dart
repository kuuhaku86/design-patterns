import 'LockingSystem.dart';
import 'Command.dart';

class CreateCommand extends Command {
  CreateCommand(LockingSystem? lockingSystem, String? file) : super(lockingSystem, file);

  @override
  void describe() {
    print("Creating file $target");
  }
}