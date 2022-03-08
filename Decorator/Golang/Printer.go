package main

import "fmt"

type Printer struct {}

func (printer Printer) print()  {
	fmt.Println("Printing the sheet")
}