import 'IRestaurant.dart';
import 'NonVegRestaurant.dart';
import 'VegNonBothRestaurant.dart';
import 'VegRestaurant.dart';

class HotelKeeperFacade {
  void getVegMenu() {
    VegRestaurant().getMenus()?.describe();
  }

  void getNonVegMenu() {
    NonVegRestaurant().getMenus()?.describe();
  }

  void getVegNonMenu() {
    VegNonBothRestaurant().getMenus()?.describe();
  }
}
