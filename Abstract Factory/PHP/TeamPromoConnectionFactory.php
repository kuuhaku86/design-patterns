<?php

require_once "IConnectionFactory.php";
require_once "TeamPromoRPCConnection.php";
require_once "TeamPromoHTTPConnection.php";

class TeamPromoConnectionFactory implements IConnectionFactory {
    public function createRPCConnection() {
        return new TeamPromoRPCConnection;
    }

    public function createHTTPConnection() {
        return new TeamPromoHTTPConnection;
    }
}