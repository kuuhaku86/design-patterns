<?php

require_once "INetwork.php";

class GlobalNetwork implements INetwork {
    public function connect(string $sites) {
        echo "Connected to " . $sites . "\n";
    }
}