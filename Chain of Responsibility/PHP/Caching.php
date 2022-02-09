<?php
require_once('Request.php');
require_once('Handler.php');

class Caching extends Handler {
    private $data = [];

    function execute(Request $request) {
        if (array_key_exists($request->get_route(), $this->data)) {
            echo "Cached\n";

            return $this->data[$request->get_route()];
        } else {
            echo "Uncached\n";

            $temp_data = $this->next_handler->execute($request);
            $this->data[$request->get_route()] = $temp_data;

            return $temp_data;
        }
    }
}