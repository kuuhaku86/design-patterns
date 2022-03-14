<?php

require_once "IComputerPart.php";
require_once "IPayment.php";

class CPU implements IComputerPart {
    public string $name = "CPU";

    public function accept(IPayment $payment)
    {
        $payment->visit($this);
    }
}