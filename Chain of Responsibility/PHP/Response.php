<?php

class Response {
    private int $code;
    private string $message;
    private $data;

    function __construct(int $code, string $message, $data) {
        $this->code = $code;
        $this->message = $message;
        $this->data = $data;
    }

    function get_code() {
        return $this->code;
    }

    function get_message() {
        return $this->message;
    }

    function get_data() {
        return $this->data;
    }

    function describe() {
        return $this->code . " : " . $this->message . "\n"; 
    }
}