package main

type CPU struct {}

func (component *CPU) accept(visitor IPayment) {
	visitor.visitCPU(component)
}