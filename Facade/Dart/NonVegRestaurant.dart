import 'IRestaurant.dart';
import 'Menu.dart';

class NonVegRestaurant implements IRestaurant {
  Menu? _menu;

  NonVegRestaurant() {
    _menu = Menu("Non Veg Menu");
  }

  @override
  Menu? getMenus() {
    return _menu;
  }
}
