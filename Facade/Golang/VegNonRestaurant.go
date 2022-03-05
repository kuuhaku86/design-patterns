package main

type VegNonRestaurant struct {
	Menu *Menu
}

func NewVegNonRestaurant() *VegNonRestaurant {
	return &VegNonRestaurant{
		Menu: &Menu{
			Name: "Veg Non Both Menu",
		},
	}
}

func (vegNonRestaurant *VegNonRestaurant) getMenus() *Menu {
	return vegNonRestaurant.Menu
}