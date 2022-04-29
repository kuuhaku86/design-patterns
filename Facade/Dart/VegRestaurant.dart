import 'IRestaurant.dart';
import 'Menu.dart';

class VegRestaurant implements IRestaurant {
  Menu? _menu;

  VegRestaurant() {
    _menu = Menu("Veg Menu");
  }

  @override
  Menu? getMenus() {
    return _menu;
  }
}

