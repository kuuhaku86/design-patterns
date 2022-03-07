package main

type Message interface {
	sendMessage(message string)
}