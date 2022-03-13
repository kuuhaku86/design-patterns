<?php

require_once "IAuth.php";

class GoogleAuth implements IAuth {
    public function authenticate(string $username, string $password)
    {
        echo "Authenticated with Google authenticate system\n";
        echo "{$username} authenticated successfully\n";
    }
}