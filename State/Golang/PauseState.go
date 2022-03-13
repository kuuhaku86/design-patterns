package main

import "fmt"

type PauseState struct {}

func (state *PauseState) action()  {
	fmt.Println("Download paused")
}