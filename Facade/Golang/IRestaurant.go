package main

type IRestaurant interface {
	getMenus() *Menu
}