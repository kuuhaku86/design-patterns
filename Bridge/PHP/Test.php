<?php
require_once('TextMessage.php');
require_once('TextMessageSender.php');

class Test {
    public static function main() {
        $textMessageSender = new TextMessageSender;
        $textMessage = new TextMessage($textMessageSender);

        // Test for sending message
        $textMessage->sendMessage("Hi Design Pattern!");

        // Test for sending second message
        $textMessage->sendMessage("Hi World!");
    }
}

Test::main();