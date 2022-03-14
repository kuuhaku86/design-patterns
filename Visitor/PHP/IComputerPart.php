<?php

require_once "IPayment.php";

interface IComputerPart {
    public function accept(IPayment $payment);
}