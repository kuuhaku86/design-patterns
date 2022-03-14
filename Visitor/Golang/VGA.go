package main

type VGA struct {}

func (component *VGA) accept(visitor IPayment) {
	visitor.visitVGA(component)
}