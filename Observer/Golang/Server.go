package main

import (
    "fmt"
    "math/rand"
)

type Server struct {
	CPU int
	RAM int
	observers []IObserver
}

func (server *Server) attach(observer IObserver)  {
	server.observers = append(server.observers, observer)
}

func (server *Server) updateResource()  {
	server.CPU = rand.Intn(100)
	server.RAM = rand.Intn(100)

	for _, observer := range server.observers {
		observer.update(server.CPU, server.RAM)
	}
}

func (server *Server) describeResource() {
	fmt.Printf("Current CPU: %d\nCurrent RAM: %d\n", server.CPU, server.RAM)
}