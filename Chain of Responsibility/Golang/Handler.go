package main

type Handler interface {
	setNextHandler(Handler)
	execute(*Request) *Response
}
