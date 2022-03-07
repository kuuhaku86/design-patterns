package main

type IMessageSender interface {
	send(message string)
}