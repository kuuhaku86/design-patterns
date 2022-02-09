<?php
require_once('Request.php');

abstract class Handler {
    protected Handler $next_handler;

    function set_next_handler(Handler $handler) {
        $this->next_handler = $handler;
    }

    abstract public function execute(Request $request);
}