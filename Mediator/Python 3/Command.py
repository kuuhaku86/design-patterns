class Command:
  def __init__(self, mediator, file):
    self.mediator = mediator
    self.file = file
  
  def describe(self):
    raise NotImplementedError
  
  def execute(self):
    if self.mediator.checkStatus():
      print("Command not executed")
    else:
      self.describe()
      self.mediator.lock(self)
      print("Command executed")
  
  def finish(self):
    self.mediator.unlock()
