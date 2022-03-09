<?php
require_once('TeamAssessmentConnectionFactory.php');
require_once('TeamPromoConnectionFactory.php');
require_once('IConnectionFactory.php');

class Test {
    public static function main() {
        // Testing factory for Promo team
        $currentFactory = new TeamPromoConnectionFactory;
        $RPCConnection = $currentFactory->createRPCConnection();
        $HTTPConnection = $currentFactory->createHTTPConnection();

        $RPCConnection->callProcedure();
        $HTTPConnection->callAPI();

        // Testing factory for Assessment team
        $currentFactory = new TeamAssessmentConnectionFactory;
        $RPCConnection = $currentFactory->createRPCConnection();
        $HTTPConnection = $currentFactory->createHTTPConnection();

        $RPCConnection->callProcedure();
        $HTTPConnection->callAPI();
    }
}

Test::main();

