package main

import "fmt"

type GoogleAuth struct {}

func (auth *GoogleAuth) authenticate(username, password string)  {
	fmt.Println("Authenticated with Google authenticate system")
	fmt.Println(username, "authenticated successfully")
}