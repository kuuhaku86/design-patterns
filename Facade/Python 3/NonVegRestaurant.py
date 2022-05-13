from Menu import Menu
from IRestaurant import IRestaurant

class NonVegRestaurant(IRestaurant):
  def __init__(self):
    super().__init__()
    self.__menu = Menu("Non Veg Menu")
  
  def getMenus(self):
    return self.__menu