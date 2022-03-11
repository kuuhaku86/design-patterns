package main

import (
	"fmt"
	"math"
)

type MaxObserver struct {
	maxCPU int
	maxRAM int
}

func (observer *MaxObserver) update(CPU int, RAM int)  {
	observer.maxCPU = int(math.Max(float64(observer.maxCPU), float64(CPU)))
	observer.maxRAM = int(math.Max(float64(observer.maxRAM), float64(RAM)))

	fmt.Printf("Current Max CPU: %d\nCurrent Max RAM: %d\n", observer.maxCPU, observer.maxRAM)
}