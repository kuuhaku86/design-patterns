package main

import (
	"fmt"
	"math/rand"
)

type System struct{}

func (system *System) setNextHandler(handler Handler) {
}

func (system *System) execute(request *Request) *Response {
	fmt.Println("In System")

	return &Response{
		Code:    200,
		Message: "Ok",
		Data:    rand.Intn(100),
	}
}
