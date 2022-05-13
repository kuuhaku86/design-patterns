from Message import Message

class TextMessage(Message):
  def __init__(self, messageSender):
    super().__init__(messageSender)
  
  def sendMessage(self, message):
    self.messageSenter.send(message)