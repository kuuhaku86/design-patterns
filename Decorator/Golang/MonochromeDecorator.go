package main

import "fmt"

type MonochromeDecorator struct {
	PrinterDecorator
}

func (monochromeDecorator MonochromeDecorator) print()  {
	monochromeDecorator.PrinterDecorator.print()
	fmt.Println("Printed with monochrome color")
}

func NewMonochromeDecorator(printer IPrinter) MonochromeDecorator {
	return MonochromeDecorator{PrinterDecorator{printer}}
}