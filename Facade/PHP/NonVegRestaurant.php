<?php

require_once "IRestaurant.php";
require_once "Menu.php";

class NonVegRestaurant implements IRestaurant {
    private Menu $menu;

    public function __construct()
    {
        $this->menu = new Menu("Non Veg Menu");
    }

    public function getMenus() {
        return $this->menu;
    }
}