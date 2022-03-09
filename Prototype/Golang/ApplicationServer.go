package main

import "fmt"

type ApplicationServer struct {
	content string
}

func NewApplicationServer () ServerPrototype {
	return &ApplicationServer{"Application"}
}

func (applicationServer *ApplicationServer) describe() {
	fmt.Println("The content of this server is", applicationServer.content)
}

func (applicationServer *ApplicationServer) clone() ServerPrototype {
	return &ApplicationServer{applicationServer.content}
}