<?php

require_once "SystemAuth.php";
require_once "GoogleAuth.php";
require_once "FacebookAuth.php";
require_once "LoginSystem.php";

class Test {
    public static function main() {
        // Testing system auth
        $auth = new SystemAuth;
        $loginSystem = new LoginSystem($auth);
        $loginSystem->login("King", "King123");

        // Testing google auth
        $auth = new GoogleAuth;
        $loginSystem = new LoginSystem($auth);
        $loginSystem->login("Jack", "Jack123");

        // Testing facebook auth
        $auth = new FacebookAuth;
        $loginSystem = new LoginSystem($auth);
        $loginSystem->login("Queen", "Queen123");
    }
}

Test::main();

