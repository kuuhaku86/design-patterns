from Menu import Menu
from IRestaurant import IRestaurant

class VegNonBothRestaurant(IRestaurant):
  def __init__(self):
    super().__init__()
    self.__menu = Menu("Veg Non Both Menu")
  
  def getMenus(self):
    return self.__menu
