<?php

require_once "TwoFactorEmail.php";
require_once "TwoFactorPhone.php";

class Test {
    public static function main() {
        // Testing two factor for email
        $twoFactor = new TwoFactorEmail;
        $twoFactor->authenticate("Jack", "Jack123");

        // Testing two factor for phone
        $twoFactor = new TwoFactorPhone;
        $twoFactor->authenticate("King", "King123");
    }
}

Test::main();

