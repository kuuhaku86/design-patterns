package main

import "fmt"

type TeamPromoRPCConnection struct {}

func (teamPromoRPCConnection *TeamPromoRPCConnection) callProcedure()  {
	fmt.Println("Calling Procedure from Promo Team")
}