package main

import "fmt"

type User struct {
	Name string
}

func (user *User) describe() {
	fmt.Println("The name of this user is ", user.Name)
}