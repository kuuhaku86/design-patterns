package main

import (
	"fmt"
)

type Caching struct {
	nextHandler Handler
	data        map[string]*Response
}

func (caching *Caching) setNextHandler(handler Handler) {
	caching.nextHandler = handler
}

func (caching *Caching) execute(request *Request) *Response {
	if caching.data == nil {
		caching.data = make(map[string]*Response)
	}

	if _, ok := caching.data[request.Route]; ok {
		fmt.Println("Cached")

		return caching.data[request.Route]
	} else {
		fmt.Println("Uncached")

		temp := caching.nextHandler.execute(request)

		caching.data[request.Route] = temp

		return temp
	}
}
