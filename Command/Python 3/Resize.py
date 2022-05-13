from ICommand import ICommand

class Resize(ICommand):
  def __init__(self, target, percentage):
    super().__init__()
    self.__target = target
    self.__percentage = percentage
  
  def execute(self):
    self.__target.resize(self.__percentage)
