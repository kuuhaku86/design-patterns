<?php

require_once "IIterator.php";
require_once "UserCollection.php";

class UserIterator implements IIterator {
    private $userCollection;
    private int $position;

    public function __construct($userCollection)
    {
        $this->userCollection = $userCollection;
        $this->position = 0;
    }

    public function hasNext() {
        return $this->position < count($this->userCollection);
    }

    public function next() {
        if ($this->position < count($this->userCollection)) {
            $user = $this->userCollection[$this->position];

            if ($this->hasNext()) {
                $this->position++;
            }     

            return $user;
        }

        return null;
    }
}