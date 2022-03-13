<?php

require_once "IState.php";

class ContinueState implements IState {
    public function action() {
        echo "Download continued\n";
    }
}