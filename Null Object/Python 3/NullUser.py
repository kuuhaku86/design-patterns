from UserInterface import UserInterface

class NullUser(UserInterface):
  def isNull(self):
    return True
  
  def buy(self):
    print("User not available")