import 'HotelKeeperFacade.dart';

void main(List<String> args) {
  HotelKeeperFacade hotelKeeperFacade = HotelKeeperFacade();

  // Getting function that abstract the functionality
  hotelKeeperFacade.getVegMenu();
  hotelKeeperFacade.getNonVegMenu();
  hotelKeeperFacade.getVegNonMenu();
}
