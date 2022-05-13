class Response:
  def __init__(self, code, message, data):
    self.code = code
    self.message = message
    self.data = data
  
  def describe(self):
    print("{0} : {1}\n".format(self.code, self.message))
