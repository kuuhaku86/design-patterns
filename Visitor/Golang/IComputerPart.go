package main

type IComputerPart interface {
	accept(visitor IPayment)
}