<?php

require_once "IState.php";

class DownloadManager {
    private IState $current;

    public function __construct(IState $current)
    {
        $this->current = $current;
    }

    public function setState(IState $state) {
        $this->current = $state;

        $this->current->action();
    }
}