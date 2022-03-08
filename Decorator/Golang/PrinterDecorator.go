package main

type PrinterDecorator struct {
	Printer IPrinter
}

func (printerDecorator PrinterDecorator) print()  {
	printerDecorator.Printer.print()
}