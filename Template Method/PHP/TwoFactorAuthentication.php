<?php

abstract class TwoFactorAuthentication {
    abstract function getData(string $username);
    abstract function sendNotification(string $username);
    abstract function match(string $username);

    public function authenticate(string $username, string $password) {
        $this->getData($username);

        $this->sendNotification($username);

        $this->match($username);
    }
}