<?php
require_once('Request.php');
require_once('Handler.php');

class Authentication extends Handler {
    function execute(Request $request) {
        if ($request->is_authenticated()) {
            echo "Authenticated\n";

            return $this->next_handler->execute($request);
        } else {
            echo "Unauthenticated\n";

            return new Response(
                403,
                "Unauthenticated",
                null
            );
        }
    }
}