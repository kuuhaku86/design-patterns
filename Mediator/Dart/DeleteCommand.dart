import 'LockingSystem.dart';
import 'Command.dart';

class DeleteCommand extends Command {
  DeleteCommand(LockingSystem? lockingSystem, String? file)
      : super(lockingSystem, file);

  @override
  void describe() {
    print("Deleting file $target");
  }
}
