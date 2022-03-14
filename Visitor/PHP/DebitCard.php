<?php

require_once "IPayment.php";
require_once "CPU.php";
require_once "VGA.php";

class DebitCard implements IPayment {
    public function visit($component) {
        if ($component instanceof CPU) {
            echo "Purchase CPU with Debit Card\n";
        } elseif ($component instanceof VGA) {
            echo "Purchase VGA with Debit Card\n";
        }
    }
}