package main

import "fmt"

type GlobalNetwork struct {}

func (globalNetwork *GlobalNetwork) connect(sites string)  {
	fmt.Println("Connected to", sites)
}