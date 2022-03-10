package main

import "fmt"

func main()  {
	users := []UserInterface{
		&User{"Jack"},
		&NullUser{},
		&User{"King"},
		&User{"Queen"},
		&NullUser{},
	}

	// Check for buy method
	for _, user := range users {
		user.buy()
	}

	// Check for isNull method
	for _, user := range users {
		if user.isNull() {
			fmt.Println("User is a null object")
		} else {
			fmt.Println("User is not a null object")
		}
	}
}