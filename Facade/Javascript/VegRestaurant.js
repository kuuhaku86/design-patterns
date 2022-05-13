import IRestaurant from "./IRestarutant.js";
import Menu from "./Menu.js";

class VegRestaurant extends IRestaurant {
  constructor() {
    super();
    this.menu = new Menu("Veg Menu");
  }

  getMenus() {
    return this.menu;
  }
}

export default VegRestaurant;
