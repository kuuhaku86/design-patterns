<?php

require_once "IHTTPConnection.php";

class TeamAssessmentHTTPConnection implements IHTTPConnection {
    public function callAPI() {
        echo "Calling API from Assessment Team\n";
    }
}