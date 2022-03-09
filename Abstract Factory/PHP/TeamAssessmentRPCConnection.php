<?php

require_once "IRPCConnection.php";

class TeamAssessmentRPCConnection implements IRPCConnection {
    public function callProcedure()
    {
        echo "Calling procedure from Assessment Team\n";
    }
}