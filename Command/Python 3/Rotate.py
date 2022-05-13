from ICommand import ICommand

class Rotate(ICommand):
  def __init__(self, target, degree):
    super().__init__()
    self.__target = target
    self.__degree = degree
  
  def execute(self):
    self.__target.rotate(self.__degree)
