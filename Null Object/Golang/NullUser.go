package main

import "fmt"

type NullUser struct {}

func (user *NullUser) isNull() bool  {
	return true
}

func (user *NullUser) buy() {
	fmt.Println("User not available")
}