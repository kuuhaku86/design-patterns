<?php

require_once('DatabaseServer.php');
require_once('ApplicationServer.php');


class Test {
    public static function main() {
        // Create prototype
        $databaseServer = new DatabaseServer;
        $applicationServer = new ApplicationServer;

        // Test database server
        $currentServer1 = clone $databaseServer;
        $currentServer1->describe();
        $currentServer2 = clone $databaseServer;
        $currentServer2->describe();

        // Test application server
        $currentServer1 = clone $applicationServer;
        $currentServer1->describe();
        $currentServer2 = clone $applicationServer;
        $currentServer2->describe();
    }
}

Test::main();


