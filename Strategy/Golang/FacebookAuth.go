package main

import "fmt"

type FacebookAuth struct {}

func (auth *FacebookAuth) authenticate(username, password string)  {
	fmt.Println("Authenticated with Facebook authenticate system")
	fmt.Println(username, "authenticated successfully")
}