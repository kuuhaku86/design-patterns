<?php

require_once "IAuth.php";

class SystemAuth implements IAuth {
    public function authenticate(string $username, string $password)
    {
        echo "Authenticated with own authenticate system\n";
        echo "{$username} authenticated successfully\n";
    }
}