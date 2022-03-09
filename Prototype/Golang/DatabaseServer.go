package main

import "fmt"

type DatabaseServer struct {
	content string
}

func NewDatabaseServer () ServerPrototype {
	return &DatabaseServer{"Database"}
}

func (databaseServer *DatabaseServer) describe() {
	fmt.Println("The content of this server is", databaseServer.content)
}

func (databaseServer *DatabaseServer) clone() ServerPrototype {
	return &DatabaseServer{databaseServer.content}
}