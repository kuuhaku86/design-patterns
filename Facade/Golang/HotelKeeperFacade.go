package main

type HotelKeeperFacade struct {}

func (hotelKeeperFacade *HotelKeeperFacade) getVegMenu()  {
	vegRestaurant := NewVegRestaurant()

	vegRestaurant.getMenus().describe()
}

func (hotelKeeperFacade *HotelKeeperFacade) getNonVegMenu()  {
	nonVegRestaurant := NewNonVegRestaurant()

	nonVegRestaurant.getMenus().describe()
}

func (hotelKeeperFacade *HotelKeeperFacade) getVegNonMenu()  {
	vegNonRestaurant := NewVegNonRestaurant()

	vegNonRestaurant.getMenus().describe()
}