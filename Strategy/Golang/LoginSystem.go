package main

import "fmt"

type LoginSystem struct {
	strategy IAuth
}

func (loginSystem *LoginSystem) login(username, password string)  {
	fmt.Println("Starting Authentication Process")
	loginSystem.strategy.authenticate(username, password)
	fmt.Println("")
}