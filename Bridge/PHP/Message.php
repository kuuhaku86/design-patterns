<?php

require_once "IMessageSender.php";

abstract class Message {
    protected IMessageSender $messageSender;

    public function __construct(IMessageSender $messageSender)
    {
        $this->messageSender = $messageSender;
    }

    public abstract function sendMessage(string $message);
}