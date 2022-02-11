package main

import (
	"fmt"
)

type Authorization struct {
	nextHandler Handler
}

func (auth *Authorization) setNextHandler(handler Handler) {
	auth.nextHandler = handler
}

func (auth *Authorization) execute(request *Request) *Response {
	if request.Authorized {
		fmt.Println("Authorized")

		return auth.nextHandler.execute(request)
	} else {
		fmt.Println("Unauthorized")

		return &Response{
			Code:    403,
			Message: "Unauthorized",
		}
	}
}
