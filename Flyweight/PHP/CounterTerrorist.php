<?php

require_once "IPlayer.php";

class CounterTerrorist implements IPlayer {
    private string $task;

    public function assignTask(string $task) {
        $this->task = $task;
    }

    public function doMission()
    {
        echo "Counter Terrorist doing Task : " . $this->task . "\n";
    }
}