package main

import "fmt"

type DebitCard struct {}

func (visitor *DebitCard) visitCPU(component *CPU)  {
	fmt.Println("Purchase CPU with Debit Card")
}

func (visitor *DebitCard) visitVGA(component *VGA)  {
	fmt.Println("Purchase VGA with Debit Card")
}