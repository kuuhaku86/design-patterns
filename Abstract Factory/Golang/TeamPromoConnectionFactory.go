package main

type TeamPromoConnectionFactory struct {}

func (teamPromoConnectionFactory *TeamPromoConnectionFactory) createRPCConnection() IRPCConnection  {
	return &TeamPromoRPCConnection{}
}

func (teamPromoConnectionFactory *TeamPromoConnectionFactory) createHTTPConnection() IHTTPConnection  {
	return &TeamPromoHTTPConnection{}
}