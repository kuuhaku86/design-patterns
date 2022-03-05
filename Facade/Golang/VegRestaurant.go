package main

type VegRestaurant struct {
	Menu *Menu
}

func NewVegRestaurant() *VegRestaurant {
	return &VegRestaurant{
		Menu: &Menu{
			Name: "Veg Menu",
		},
	}
}

func (vegRestaurant *VegRestaurant) getMenus() *Menu {
	return vegRestaurant.Menu
}