<?php

require_once "IPlayer.php";

class Terrorist implements IPlayer {
    private string $task;

    public function assignTask(string $task) {
        $this->task = $task;
    }

    public function doMission()
    {
        echo "Terrorist doing Task : " . $this->task . "\n";
    }
}