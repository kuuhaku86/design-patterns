<?php

require_once('LoggerType.php');
require_once('LoggerFactory.php');

class Test {
    public static function main() {
        $loggerFactory = new LoggerFactory;
        $message = "Message from the system";

        // Test for info logger
        $currentLogger = $loggerFactory->create(LoggerType::InfoLoggerType);
        $currentLogger->print($message);

        sleep(2);

        // Test for warning logger
        $currentLogger = $loggerFactory->create(LoggerType::WarningLoggerType);
        $currentLogger->print($message);

        sleep(2);

        // Test for error logger
        $currentLogger = $loggerFactory->create(LoggerType::ErrorLoggerType);
        $currentLogger->print($message);
    }
}

Test::main();

