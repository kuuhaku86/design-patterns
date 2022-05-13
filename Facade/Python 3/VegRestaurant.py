from Menu import Menu
from IRestaurant import IRestaurant

class VegRestaurant(IRestaurant):
  def __init__(self):
    super().__init__()
    self.__menu = Menu("Veg Menu")
  
  def getMenus(self):
    return self.__menu
