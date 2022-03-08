<?php

require_once "IUser.php";

class Group implements IUser {
    private array $users;

    public function add(IUser $user) {
        $this->users[] = $user;
    }

    public function getUserDetail()
    {
        foreach ($this->users as $user) {
            $user->getUserDetail();
        }
    }
}