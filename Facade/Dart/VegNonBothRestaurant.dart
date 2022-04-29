import 'IRestaurant.dart';
import 'Menu.dart';

class VegNonBothRestaurant implements IRestaurant {
  Menu? _menu;

  VegNonBothRestaurant() {
    _menu = Menu("Veg Non Both Menu");
  }

  @override
  Menu? getMenus() {
    return _menu;
  }
}


