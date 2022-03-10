package main

import "fmt"

type User struct {
	name string
}

func (user *User) isNull() bool  {
	return false
}

func (user *User) buy() {
	fmt.Println("User", user.name, "buys the product")
}
