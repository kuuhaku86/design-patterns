import IRestaurant from "./IRestarutant.js";
import Menu from "./Menu.js";

class VegNonBothRestaurant extends IRestaurant {
  constructor() {
    super();
    this.menu = new Menu("Veg Non Both Menu");
  }

  getMenus() {
    return this.menu;
  }
}

export default VegNonBothRestaurant;
