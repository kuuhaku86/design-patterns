<?php

require_once "IComputerPart.php";
require_once "IPayment.php";

class VGA implements IComputerPart {
    public string $name = "VGA";

    public function accept(IPayment $payment)
    {
        $payment->visit($this);
    }
}