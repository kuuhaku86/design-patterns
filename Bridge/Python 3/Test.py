from TextMessage import TextMessage
from TextMessageSender import TextMessageSender

textMessageSender = TextMessageSender()
textMessage = TextMessage(textMessageSender)

# Test for sending message
textMessage.sendMessage("Hi Design Pattern")

# Test for sending another message
textMessage.sendMessage("Hi World!")