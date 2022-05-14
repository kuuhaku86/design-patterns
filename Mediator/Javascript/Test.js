import LockingSystem from './LockingSystem.js';
import DeleteCommand from './DeleteCommand.js';
import CreateCommand from './CreateCommand.js';

const lockingSystem = new LockingSystem();
const createCommand = new CreateCommand(lockingSystem, "Test.txt");
const deleteCommand = new DeleteCommand(lockingSystem, "Test.txt");

// Testing for lock
createCommand.execute();
deleteCommand.execute();

// Testing for Unlock
createCommand.finish();
deleteCommand.execute();
deleteCommand.finish();

