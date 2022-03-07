package main

import "fmt"

type TextMessage struct {
	Sender IMessageSender
}

func (textMessage *TextMessage) sendMessage(message string) {
	fmt.Println("Message processed to sender")
	textMessage.Sender.send(message)
}