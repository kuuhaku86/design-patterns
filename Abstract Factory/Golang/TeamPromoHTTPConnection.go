package main

import "fmt"

type TeamPromoHTTPConnection struct {}

func (teamPromoHTTPConnection *TeamPromoHTTPConnection) callAPI()  {
	fmt.Println("Calling API from Promo Team")
}