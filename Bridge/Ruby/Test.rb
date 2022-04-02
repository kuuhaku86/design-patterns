require_relative "TextMessage"
require_relative "TextMessageSender"

textMessageSender = TextMessageSender.new
textMessage = TextMessage.new(textMessageSender)

# Test for sending message
textMessage.sendMessage("Hi Design Pattern!")

# Test for sending second message
textMessage.sendMessage("Hi World!")