<?php

require_once('UserCollection.php');
require_once('User.php');

class Test {
    public static function main() {
        $userCollection = new UserCollection;

        // Add user to collection
        $user = New User("David");
        $userCollection->add($user);
        $user = New User("Jack");
        $userCollection->add($user);
        $user = New User("King");
        $userCollection->add($user);

        // Get iterator
        $iterator = $userCollection->createIterator();

        // Loop all the added user
        while ($iterator->hasNext()) {
            $user = $iterator->next();
            $user->describe();
        }
    }
}

Test::main();

