from IUser import IUser

class User(IUser):
  def __init__(self, name):
    self.__name = name
  
  def inspect(self):
    print("The name of the user is: " + self.__name)
