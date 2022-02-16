<?php

require_once('LoggerType.php');
require_once('LoggerFactory.php');

class Test {
    public static function main() {
        $loggerFactory = new LoggerFactory;
        $message = "Message from the system";

        // Test for info logger
        $currentLogger = $loggerFactory->create(LoggerType::InfoLogger);
        $currentLogger->print($message);

        sleep(2);

        // Test for warning logger
        $currentLogger = $loggerFactory->create(LoggerType::WarningLogger);
        $currentLogger->print($message);

        sleep(2);

        // Test for error logger
        $currentLogger = $loggerFactory->create(LoggerType::ErrorLogger);
        $currentLogger->print($message);
    }
}

Test::main();

