<?php

require_once('User.php');
require_once('NullUser.php');

class Test {
    public static function main() {
        $users = [
            new User("Jack"),
            new NullUser,
            new User("King"),
            new User("Queen"),
            new NullUser,
        ];

        // Check for buy method
        foreach ($users as $user) {
            $user->buy();
        }

        // Check for buy method
        foreach ($users as $user) {
            if ($user->isNull()) {
                echo "This user is a null object\n";
            } else {
                echo "This user is not a null object\n";
            }
        }
    }
}

Test::main();


