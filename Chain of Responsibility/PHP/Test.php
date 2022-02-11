<?php
require_once('Authentication.php');
require_once('Authorization.php');
require_once('Caching.php');
require_once('System.php');
require_once('Request.php');
require_once('Response.php');

class Test {
    public static function main() {
        $authentication = new Authentication;
        $authorization = new Authorization;
        $caching = new Caching;
        $system = new System;

        $authentication->set_next_handler($authorization);
        $authorization->set_next_handler($caching);
        $caching->set_next_handler($system);

        echo "\n\nTest Unauthenticated\n";
        $request = new Request(
            false,
            false,
            "/test"
        );
        $response = $authentication->execute($request);

        echo $response->describe();

        echo "\n\nTest Unauthorized\n";
        $request = new Request(
            true,
            false,
            "/test"
        );
        $response = $authentication->execute($request);

        echo $response->describe();

        echo "\n\nTest Get to System\n";
        $request = new Request(
            true,
            true,
            "/test"
        );
        $response = $authentication->execute($request);

        echo $response->describe();

        echo "\n\nTest Cached\n";

        $response = $authentication->execute($request);

        echo $response->describe();
    }
}

Test::main();