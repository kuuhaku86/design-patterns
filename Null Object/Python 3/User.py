from UserInterface import UserInterface

class User:
  def __init__(self, name):
    self.__name = name
  
  def isNull(self):
    return False
  
  def buy(self):
    print("User " + self.__name + " is buying the product")