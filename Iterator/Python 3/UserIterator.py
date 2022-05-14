from IIterator import IIterator

class UserIterator(IIterator):
  def __init__(self, users):
    self.users = users
    self.index = 0
  
  def hasNext(self):
    return self.index < len(self.users)
  
  def next(self):
    if self.hasNext():
      user = self.users[self.index]
      self.index += 1
      return user
    elif len(self.users) > 0:
      return self.users[len(self.users) - 1]