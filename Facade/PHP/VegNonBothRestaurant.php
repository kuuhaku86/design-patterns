<?php

require_once "IRestaurant.php";
require_once "Menu.php";

class VegNonBothRestaurant implements IRestaurant {
    private Menu $menu;

    public function __construct()
    {
        $this->menu = new Menu("Veg Non Both Menu");
    }

    public function getMenus() {
        return $this->menu;
    }
}