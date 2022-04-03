require_relative "LockingSystem"
require_relative "DeleteCommand"
require_relative "CreateCommand"

lockingSystem = LockingSystem.new
createCommand = CreateCommand.new(lockingSystem, "Test.txt")
deleteCommand = DeleteCommand.new(lockingSystem, "Test.txt")

# Testing for lock
createCommand.execute
deleteCommand.execute

# Testing for Unlock
createCommand.finish
deleteCommand.execute
deleteCommand.finish