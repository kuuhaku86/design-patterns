package main

import "fmt"

type AverageObserver struct {
	counter int
	resources [][]int
	averageCPU float32
	averageRAM float32
}

func (observer *AverageObserver) update(CPU int, RAM int)  {
	observer.resources = append(observer.resources, []int{CPU, RAM})
	observer.counter++
	tempCPU := 0
	tempRAM := 0

	for _, resource := range observer.resources {
		tempCPU += resource[0]
		tempRAM += resource[1]
	}

	observer.averageCPU = float32(tempCPU) / float32(observer.counter)
	observer.averageRAM = float32(tempRAM) / float32(observer.counter)

	fmt.Printf("Current Average CPU: %.2f\nCurrent Average RAM: %.2f\n", observer.averageCPU, observer.averageRAM)
}