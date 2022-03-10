package main

import "fmt"

type DeleteCommand struct {
	mediator 	*LockingSystem
	file 		string
}

func (command *DeleteCommand) execute() {
	if !command.mediator.checkStatus() {
		command.mediator.lock(command)
		command.describe()
		fmt.Println("Command executed")
	} else {
		fmt.Println("Command not executed")
	}
}

func (command *DeleteCommand) finish() {
	command.mediator.unlock()
}

func (command *DeleteCommand) describe() {
	fmt.Println("Deleting file ", command.file)
}