<?php

require_once('InfoLogger.php');
require_once('WarningLogger.php');
require_once('ErrorLogger.php');
require_once('LoggerType.php');

class LoggerFactory {
    public function create(int $type) {
        switch ($type) {
            case LoggerType::InfoLogger:
                return new InfoLogger;
            
            case LoggerType::WarningLogger:
                return new WarningLogger;

            case LoggerType::ErrorLogger:
                return new ErrorLogger;

            default:
                return null;
        }
    }
}