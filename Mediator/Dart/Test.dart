import 'CreateComand.dart';
import 'DeleteCommand.dart';
import 'LockingSystem.dart';

void main(List<String> args) {
  var lockingSystem = LockingSystem();
  var createCommand = CreateCommand(lockingSystem, "Test.txt");
  var deleteCommand = DeleteCommand(lockingSystem, "Test.txt");

  // Testing for lock
  createCommand.execute();
  deleteCommand.execute();

  // Testing for unlock
  createCommand.finish();
  deleteCommand.execute();
  deleteCommand.finish();
}