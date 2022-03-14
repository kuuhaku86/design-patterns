<?php

require_once "TwoFactorAuthentication.php";

class TwoFactorPhone extends TwoFactorAuthentication {
    public function getData(string $username) {
        echo "Getting phone data for {$username}\n";
    }

    public function sendNotification(string $username) {
        echo "Sending sms to {$username}\n";
    }
    
    public function match(string $username) {
        echo "Matching sms code from {$username}\n";
    }
}