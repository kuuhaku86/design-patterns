class LockingSystem:
  def __init__(self):
    self.status = False
    self.command = None
  
  def lock(self, command):
    self.status = True
    self.command = command
  
  def unlock(self):
    self.status = False
    self.command = None
  
  def checkStatus(self):
    if self.status:
      print("The system is currently used by:")
      self.command.describe()
    
    return self.status