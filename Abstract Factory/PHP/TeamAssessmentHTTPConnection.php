<?php

require_once "IHTTPConnection.php";

class TeamAssessmentHTTPConnection implements IHTTPConnection {
    public function callAPI() {
        echo "Call API from Assessment Team\n";
    }
}