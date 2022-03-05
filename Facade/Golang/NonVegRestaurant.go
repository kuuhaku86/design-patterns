package main

type NonVegRestaurant struct {
	Menu *Menu
}

func NewNonVegRestaurant() *NonVegRestaurant {
	return &NonVegRestaurant{
		Menu: &Menu{
			Name: "Non Veg Menu",
		},
	}
}

func (nonVegRestaurant *NonVegRestaurant) getMenus() *Menu {
	return nonVegRestaurant.Menu
}