package main

func main()  {
	printer := Printer{}
	colorfulDecorator := NewColorfulDecorator(printer)
	monochromeDecorator := NewMonochromeDecorator(printer)

	// Test for colorful decorator
	colorfulDecorator.print()

	// Test for monochrome decorator
	monochromeDecorator.print()
}