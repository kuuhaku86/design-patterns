package main

import (
	"fmt"
)

type Authentication struct {
	nextHandler Handler
}

func (auth *Authentication) setNextHandler(handler Handler) {
	auth.nextHandler = handler
}

func (auth *Authentication) execute(request *Request) *Response  {
	if request.Authenticated {
		fmt.Println("Authenticated")

		return auth.nextHandler.execute(request)
	} else {
		fmt.Println("Unauthenticated")

		return &Response{
			Code: 		403,
			Message: 	"Unauthenticated",
		}
	}
}