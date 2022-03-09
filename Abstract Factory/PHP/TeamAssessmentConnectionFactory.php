<?php

require_once "IConnectionFactory.php";
require_once "TeamAssessmentRPCConnection.php";
require_once "TeamAssessmentHTTPConnection.php";

class TeamAssessmentConnectionFactory implements IConnectionFactory {
    public function createRPCConnection() {
        return new TeamAssessmentRPCConnection;
    }

    public function createHTTPConnection() {
        return new TeamAssessmentHTTPConnection;
    }
}