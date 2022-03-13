<?php

interface IAuth {
    public function authenticate(string $username, string $password);
}