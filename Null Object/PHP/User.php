<?php

require_once "UserInterface.php";

class User implements UserInterface {
    private string $name;

    public function __construct(string $name)
    {
        $this->name = $name;
    }

    public function isNull() {
        return false;
    }

    public function buy() {
        echo "User {$this->name} buy the product\n";
    }
}