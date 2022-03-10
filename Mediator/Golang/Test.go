package main

func main()  {
	lockingSystem := NewLockingSystem()
	createCommand := &CreateCommand{lockingSystem, "Test.txt"}
	deleteCommand := &DeleteCommand{lockingSystem, "Test.txt"}

	// Testing for lock
	createCommand.execute()
	deleteCommand.execute()

	// Testing for unlock
	createCommand.finish()
	deleteCommand.execute()
	deleteCommand.finish()
}