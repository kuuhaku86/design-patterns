import IRestaurant from "./IRestarutant.js";
import Menu from "./Menu.js";

class NonVegRestaurant extends IRestaurant {
  constructor() {
    super();
    this.menu = new Menu("Non Veg Menu");
  }

  getMenus() {
    return this.menu;
  }
}

export default NonVegRestaurant;