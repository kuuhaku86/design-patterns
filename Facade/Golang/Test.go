package main

func main() {
	hotelKeeperFacade := &HotelKeeperFacade{}

	// Getting function that abstract the functionality
	hotelKeeperFacade.getVegMenu()
	hotelKeeperFacade.getNonVegMenu()
	hotelKeeperFacade.getVegNonMenu()
}