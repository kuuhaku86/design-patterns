from ICommand import ICommand

class Inspect(ICommand):
  def __init__(self, target):
    super().__init__()
    self.__target = target
  
  def execute(self):
    self.__target.inspect()