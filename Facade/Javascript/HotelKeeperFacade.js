import VegRestaurant from "./VegRestaurant.js";
import NonVegRestaurant from "./NonVegRestaurant.js";
import VegNonBothRestaurant from "./VegNonBothRestaurant.js";

class HotelKeeperFacade {
  getVegMenu() {
    const vegRestaurant = new VegRestaurant();
    vegRestaurant.getMenus().describe();
  }

  getNonVegMenu() {
    const nonVegRestaurant = new NonVegRestaurant();
    nonVegRestaurant.getMenus().describe();
  }

  getVegNonMenu() {
    const vegNonRestaurant = new VegNonBothRestaurant();
    vegNonRestaurant.getMenus().describe();
  }
}

export default HotelKeeperFacade;