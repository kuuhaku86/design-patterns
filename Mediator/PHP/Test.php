<?php

require_once('LockingSystem.php');
require_once('CreateCommand.php');
require_once('DeleteCommand.php');

class Test {
    public static function main() {
        $lockingSystem = new LockingSystem;
        $createCommand = new CreateCommand($lockingSystem, "Test.txt");
        $deleteCommand = new DeleteCommand($lockingSystem, "Test.txt");

        // Testing for lock
        $createCommand->execute();
        $deleteCommand->execute();

        // Testing for unlock
        $createCommand->finish();
        $deleteCommand->execute();
        $deleteCommand->finish();
    }
}

Test::main();

