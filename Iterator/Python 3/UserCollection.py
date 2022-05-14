from ICollection import ICollection
from UserIterator import UserIterator

class UserCollection(ICollection):
  def __init__(self):
    self.users = []
  
  def add(self, user):
    self.users.append(user)

  def createIterator(self):
    return UserIterator(self.users)