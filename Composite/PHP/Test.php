<?php

require_once('User.php');
require_once('Group.php');

class Test {
    public static function main() {
        $group = new Group;

        // Add user
        $user = new User("Jack");
        $group->add($user);

        // Add user
        $user = new User("King");
        $group->add($user);

        // Add user
        $user = new User("Queen");
        $group->add($user);

        // Test getUserDetail
        $group->getUserDetail();
    }
}

Test::main();

