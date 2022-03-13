<?php

require_once "ContinueState.php";
require_once "PauseState.php";
require_once "DownloadManager.php";

class Test {
    public static function main() {
        $continueState = new ContinueState;
        $pauseState = new PauseState;
        $downloadManager = new DownloadManager($continueState);

        // Test pause state
        $downloadManager->setState($pauseState);
        $downloadManager->action();

        // Test continue state
        $downloadManager->setState($continueState);
        $downloadManager->action();
    }
}

Test::main();

