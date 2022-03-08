package main

import "fmt"

type ColorfulDecorator struct {
	PrinterDecorator
}

func (colorfulDecorator ColorfulDecorator) print()  {
	colorfulDecorator.PrinterDecorator.print()
	fmt.Println("Printed with colorful color")
}

func NewColorfulDecorator(printer IPrinter) ColorfulDecorator {
	return ColorfulDecorator{PrinterDecorator{printer}}
}