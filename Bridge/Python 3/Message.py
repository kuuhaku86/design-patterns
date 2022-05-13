class Message:
  def __init__(self, messageSender):
    self.messageSenter = messageSender

  def sendMessage(self, message):
    raise NotImplementedError