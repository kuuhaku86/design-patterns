<?php

require_once('Database.php');

class Test {
    public static function main() {
        // Get instance
        $database = Database::getInstance();

        // Test the instance
        $database->describe();

        // Get instance
        $database = Database::getInstance();

        // Test the instance
        $database->describe();
    }
}

Test::main();

