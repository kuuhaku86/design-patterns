<?php

require_once "ServerPrototype.php";

class DatabaseServer extends ServerPrototype {
    public function __construct()
    {
        parent::__construct("Database");
    }

    function __clone() {
    }
}