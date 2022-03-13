<?php

require_once "IState.php";

class PauseState implements IState {
    public function action() {
        echo "Download paused\n";
    }
}