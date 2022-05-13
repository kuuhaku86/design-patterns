from NonVegRestaurant import NonVegRestaurant
from VegNonBothRestaurant import VegNonBothRestaurant
from VegRestaurant import VegRestaurant

class HotelKeeperFacade:
  def getVegMenu(self):
    vegRestaurant = VegRestaurant()
    vegRestaurant.getMenus().describe()

  def getNonVegMenu(self):
    nonVegRestaurant = NonVegRestaurant()
    nonVegRestaurant.getMenus().describe()

  def getVegNonMenu(self):
    vegNonBothRestaurant = VegNonBothRestaurant()
    vegNonBothRestaurant.getMenus().describe()
