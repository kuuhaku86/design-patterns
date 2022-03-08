<?php

require_once('GlobalNetwork.php');
require_once('ProxyNetwork.php');

class Test {
    public static function main() {
        $globalNetwork = new GlobalNetwork;
        $proxyNetwork = new ProxyNetwork($globalNetwork);

        // Test for unblocked sites
        $proxyNetwork->connect("google.com");
        $proxyNetwork->connect("yahoo.com");

        // Test for blocked sites
        $proxyNetwork->connect("abc.com");
        $proxyNetwork->connect("xyz.com");
    }
}

Test::main();

