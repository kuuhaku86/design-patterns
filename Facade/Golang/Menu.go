package main

import "fmt"

type Menu struct {
	Name string
}

func (menu *Menu) describe() {
	fmt.Println("This is", menu.Name)
}