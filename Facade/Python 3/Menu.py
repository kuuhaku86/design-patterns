class Menu:
  def __init__(self, name):
    self.__name = name
  
  def describe(self):
    print("This is {} menu".format(self.__name))