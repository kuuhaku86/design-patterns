<?php

require_once('InfoLogger.php');
require_once('WarningLogger.php');
require_once('ErrorLogger.php');
require_once('LoggerType.php');

class LoggerFactory {
    public function create(int $type) {
        switch ($type) {
            case LoggerType::InfoLoggerType:
                return new InfoLogger;
            
            case LoggerType::WarningLoggerType:
                return new WarningLogger;

            case LoggerType::ErrorLoggerType:
                return new ErrorLogger;

            default:
                return null;
        }
    }
}