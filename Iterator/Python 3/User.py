class User:
  def __init__(self, name):
    self.name = name
  
  def describe(self):
    print("The name of this user is " + self.name)