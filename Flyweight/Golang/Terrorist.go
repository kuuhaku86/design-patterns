package main

import "fmt"

type Terrorist struct {
	task string
}

func (terrorist *Terrorist) assignTask(task string)  {
	terrorist.task = task
}

func (terrorist *Terrorist) doMission()  {
	fmt.Println("Terrorist doing Task :", terrorist.task)
}
