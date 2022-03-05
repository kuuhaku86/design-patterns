<?php

require_once "ICollection.php";
require_once "User.php";
require_once "UserIterator.php";

class UserCollection implements ICollection {
    private array $collection;

    public function createIterator() {
        return new UserIterator($this->collection);
    }

    public function add(User $user) {
        $this->collection[] = $user;
    }
}