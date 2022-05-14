from LockingSystem import LockingSystem
from DeleteCommand import DeleteCommand
from CreateCommand import CreateCommand

lockingSystem = LockingSystem()
createCommand = CreateCommand(lockingSystem, "Test.txt")
deleteCommand = DeleteCommand(lockingSystem, "Test.txt")

# Testing for lock
createCommand.execute()
deleteCommand.execute()

# Testing for Unlock
createCommand.finish()
deleteCommand.execute()
deleteCommand.finish()
