<?php

require_once "ContinueState.php";
require_once "PauseState.php";
require_once "DownloadManager.php";

class Test {
    public static function main() {
        $continueState = new ContinueState;
        $pauseState = new PauseState;
        $downloadManager = new DownloadManager($continueState);

        // Test set state
        $downloadManager->setState($pauseState);
        $downloadManager->setState($continueState);
    }
}

Test::main();

