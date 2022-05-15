import copy

class ServerPrototype:
  def __init__(self, content):
    self.content = content
  
  def describe(self):
    print("The content of this server is {}".format(self.content))
  
  def clone(self):
    return copy.copy(self)