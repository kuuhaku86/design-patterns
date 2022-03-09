package main

import "fmt"

type Thread struct {
	number int
}

func (thread *Thread) describe()  {
	fmt.Println("This is thread number", thread.number)
}