<?php

class User {
    private string $name;

    public function __construct($name)
    {
        $this->name = $name;
    }

    public function describe() {
        echo "The name of this user is {$this->name}\n";
    }
}