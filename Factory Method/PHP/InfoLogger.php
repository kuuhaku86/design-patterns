<?php
require_once('ILogger.php');

class InfoLogger implements ILogger {
    public function print(string $message)
    {
        $time = date("Y-m-d h:i:s", time());
        echo $time . " [INFO]: " . $message . "\n";
    }
}