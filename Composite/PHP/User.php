<?php

require_once "IUser.php";

class User implements IUser {
    private string $name;

    public function __construct(string $name)
    {
        $this->name = $name;
    }

    public function getUserDetail() {
        echo "The name of this user is " . $this->name . "\n";
    }
}