<?php

require_once "Message.php";
require_once "IMessageSender.php";

class TextMessage extends Message {
    public function sendMessage(string $message)
    {
        echo "Message processed to sender\n";
        $this->messageSender->send($message);
    }
}