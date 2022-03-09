<?php

require_once "ServerPrototype.php";

class ApplicationServer extends ServerPrototype {
    public function __construct()
    {
        parent::__construct("Application");
    }

    function __clone() {
    }
}