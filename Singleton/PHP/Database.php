<?php

class Database {
    private static Database $instance;
    private string $content;

    private function __construct()
    {
        $this->content = "User Data";
    }

    public static function getInstance() {
        if (!isset(Database::$instance)) {
            echo "New database instance created\n";
            Database::$instance = new Database;
        }

        return Database::$instance;
    }

    public function describe() {
        echo "The content of this database is " . $this->content . "\n";
    }
}