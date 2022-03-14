<?php

require_once "CPU.php";
require_once "VGA.php";
require_once "CreditCard.php";
require_once "DebitCard.php";

class Test {
    public static function main() {
        $cpu = new CPU;
        $vga = new VGA;

        // Test for credit card visitor
        $creditCard = new CreditCard;
        $cpu->accept($creditCard);
        $vga->accept($creditCard);

        // Test for credit card visitor
        $debitCard = new DebitCard;
        $cpu->accept($debitCard);
        $vga->accept($debitCard);
    }
}

Test::main();

