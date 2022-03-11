<?php

require_once('Server.php');
require_once('MaxObserver.php');
require_once('AverageObserver.php');

class Test {
    public static function main() {
        $server = new Server;
        $maxObserver = new MaxObserver;
        $averageObserver = new AverageObserver;

        // Attach observer
        $server->attach($maxObserver);
        $server->attach($averageObserver);

        // Test update
        $server->updateResource();
        $server->describeResource();

        // Test update
        $server->updateResource();
        $server->describeResource();

        // Test update
        $server->updateResource();
        $server->describeResource();
    }
}

Test::main();


