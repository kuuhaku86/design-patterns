package main

import "fmt"

type CreateCommand struct {
	mediator 	*LockingSystem
	file 		string
}

func (command *CreateCommand) execute() {
	if !command.mediator.checkStatus() {
		command.mediator.lock(command)
		command.describe()
		fmt.Println("Command executed")
	} else {
		fmt.Println("Command not executed")
	}
}

func (command *CreateCommand) finish() {
	command.mediator.unlock()
}

func (command *CreateCommand) describe() {
	fmt.Println("Creating file ", command.file)
}