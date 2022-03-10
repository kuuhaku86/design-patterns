package main

import "fmt"

type Database struct {
	content string
}

var instance *Database

func getInstance() *Database {
	if instance == nil {
		fmt.Println("Creating new instance")
		instance = &Database{content: "Hello"}
	}

	return instance
}

func (database *Database) describe() {
	fmt.Println("The content of database is", database.content)
}