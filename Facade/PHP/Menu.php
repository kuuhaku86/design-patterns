<?php

class Menu {
    private string $name;

    public function __construct($name)
    {
        $this->name = $name;
    }

    public function describe() {
        echo "This is {$this->name} menu\n";
    }
}