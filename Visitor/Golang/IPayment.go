package main

type IPayment interface {
	visitCPU(component *CPU)
	visitVGA(component *VGA)
}