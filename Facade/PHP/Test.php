<?php

require_once('HotelKeeperFacade.php');

class Test {
    public static function main() {
        $hotelKeeperFacade = new HotelKeeperFacade;

        // Getting function that abstract the functionality
        $hotelKeeperFacade->getVegMenu();
        $hotelKeeperFacade->getNonVegMenu();
        $hotelKeeperFacade->getVegNonMenu();
    }
}

Test::main();

