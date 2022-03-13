package main

import "fmt"

type SystemAuth struct {}

func (auth *SystemAuth) authenticate(username, password string)  {
	fmt.Println("Authenticated with own authenticate system")
	fmt.Println(username, "authenticated successfully")
}