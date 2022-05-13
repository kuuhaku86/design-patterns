from IMessageSender import IMessageSender

class TextMessageSender(IMessageSender):
  def send(self, message):
    print("Message: ", message)
    print("Send with TextMessageSender")
    print("Message sent successfully")