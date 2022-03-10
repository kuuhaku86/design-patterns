<?php

require_once "UserInterface.php";

class NullUser implements UserInterface {
    public function isNull() {
        return true;
    }

    public function buy() {
        echo "User not available\n";
    }
}