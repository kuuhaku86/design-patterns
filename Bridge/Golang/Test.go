package main

func main()  {
	textMessageSender := TextMessageSender{}
	textMessage := TextMessage{
		Sender: textMessageSender,
	}

	// Test for sending message
	textMessage.sendMessage("Hi Design Pattern!")

	// Test for sending second message
	textMessage.sendMessage("Hi World!")
}