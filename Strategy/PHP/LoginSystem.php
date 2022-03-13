<?php

require_once "IAuth.php";

class LoginSystem {
    private IAuth $strategy;

    public function __construct(IAuth $strategy)
    {
        $this->strategy = $strategy;
    }

    public function login(string $username, string $password) {
        echo "Starting Authenticaton Process\n";
        $this->strategy->authenticate($username, $password);
        echo "\n";
    }
}