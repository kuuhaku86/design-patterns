<?php
require_once('Request.php');
require_once('Handler.php');

class Authorization extends Handler {
    function execute(Request $request) {
        if ($request->is_authorized()) {
            echo "Authorized\n";

            return $this->next_handler->execute($request);
        } else {
            echo "Unauthorized\n";

            return new Response(
                403,
                "Unauthorized",
                null
            );
        }
    }
}