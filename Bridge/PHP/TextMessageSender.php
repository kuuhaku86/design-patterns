<?php

require_once "IMessageSender.php";

class TextMessageSender implements IMessageSender {
    public function send(string $message) {
        echo "Message: " . $message . "\n";
        echo "Send with Text Message Sender\n";
        echo "Message send successfully\n\n";
    }
}