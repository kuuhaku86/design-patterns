<?php

require_once('User.php');
require_once('Group.php');

class Test {
    public static function main() {
        $group = new Group;

        $user = new User("Jack");
        $group->add($user);

        $user = new User("King");
        $group->add($user);

        $user = new User("Queen");
        $group->add($user);

        $group->getUserDetail();
    }
}

Test::main();

