<?php

require_once "IHTTPConnection.php";

class TeamPromoHTTPConnection implements IHTTPConnection {
    public function callAPI() {
        echo "Calling API from Promo Team\n";
    }
}