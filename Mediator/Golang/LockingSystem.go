package main

import "fmt"

type LockingSystem struct {
	status bool
	command Command
}

func NewLockingSystem () *LockingSystem {
	return &LockingSystem{false, nil}
}

func (lockingSystem *LockingSystem) lock(command Command)  {
	lockingSystem.command = command
	lockingSystem.status = true
}

func (lockingSystem *LockingSystem) unlock()  {
	lockingSystem.status = false
}

func (lockingSystem *LockingSystem) checkStatus() bool {
	if (lockingSystem.status) {
        fmt.Println("The system currently used by:")
		lockingSystem.command.describe()
	} 

	return lockingSystem.status
}