<?php
require_once('Request.php');
require_once('Response.php');
require_once('Handler.php');

class System extends Handler {
    function execute(Request $request) {
        echo "In System\n";

        return new Response(
            200,
            "Ok",
            rand(0,100)
        );
    }
}