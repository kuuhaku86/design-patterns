<?php

require_once "IAuth.php";

class FacebookAuth implements IAuth {
    public function authenticate(string $username, string $password)
    {
        echo "Authenticated with Facebook authenticate system\n";
        echo "{$username} authenticated successfully\n";
    }
}