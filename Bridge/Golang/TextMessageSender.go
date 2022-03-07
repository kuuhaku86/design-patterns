package main

import "fmt"

type TextMessageSender struct{}

func (textMessageSender TextMessageSender) send(message string) {
	fmt.Println("Message:", message)
	fmt.Println("Send with Text Message Sender")
	fmt.Println("Message send successfully\n")
}
