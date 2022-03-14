<?php

require_once "TwoFactorAuthentication.php";

class TwoFactorEmail extends TwoFactorAuthentication {
    public function getData(string $username) {
        echo "Getting email data for {$username}\n";
    }

    public function sendNotification(string $username) {
        echo "Sending email to {$username}\n";
    }
    
    public function match(string $username) {
        echo "Matching email code from {$username}\n";
    }
}