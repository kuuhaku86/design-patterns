<?php

require_once "VegRestaurant.php";
require_once "NonVegRestaurant.php";
require_once "VegNonBothRestaurant.php";

class HotelKeeperFacade {
    public function getVegMenu() {
        $vegRestaurant = new VegRestaurant;
        $vegRestaurant->getMenus()->describe();
    }

    public function getNonVegMenu() {
        $nonVegRestaurant = new NonVegRestaurant;
        $nonVegRestaurant->getMenus()->describe();
    }

    public function getVegNonMenu() {
        $vegNonBothRestaurant = new VegNonBothRestaurant;
        $vegNonBothRestaurant->getMenus()->describe();
    }
}