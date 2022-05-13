from IUser import IUser

class Group(IUser):
  def __init__(self):
    super().__init__()
    self.__users = []
  
  def add(self, user):
    self.__users.append(user)
  
  def inspect(self):
    for user in self.__users:
      user.inspect()
      