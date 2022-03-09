<?php

require_once "IRPCConnection.php";

class TeamPromoRPCConnection implements IRPCConnection {
    public function callProcedure()
    {
        echo "Calling procedure from Promo Team\n";
    }
}