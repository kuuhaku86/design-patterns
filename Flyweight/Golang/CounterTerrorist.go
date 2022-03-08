package main

import "fmt"

type CounterTerrorist struct {
	task string
}

func (counterTerrorist *CounterTerrorist) assignTask(task string)  {
	counterTerrorist.task = task
}

func (counterTerrorist *CounterTerrorist) doMission()  {
	fmt.Println("Counter Terrorist doing Task :", counterTerrorist.task)
}