package main

import "fmt"

type ContinueState struct {}

func (state *ContinueState) action()  {
	fmt.Println("Download continued")
}