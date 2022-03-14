package main

import "fmt"

type CreditCard struct {}

func (visitor *CreditCard) visitCPU(component *CPU)  {
	fmt.Println("Purchase CPU with Credit Card")
}

func (visitor *CreditCard) visitVGA(component *VGA)  {
	fmt.Println("Purchase VGA with Credit Card")
}