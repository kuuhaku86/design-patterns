<?php
require_once('ILogger.php');

class WarningLogger implements ILogger {
    public function print(string $message)
    {
        $time = date("Y-m-d h:i:s", time());
        echo $time . " [Warning]: " . $message . "\n";
    }
}