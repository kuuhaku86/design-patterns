<?php

require_once "Command.php";

class LockingSystem {
    private bool $status;
    private Command $command;

    public function __construct()
    {
        $this->status = false;
    }

    public function lock(Command $command) {
        $this->command = $command;
        $this->status = true;
    }

    public function unlock() {
        $this->status = false;
    }

    public function checkStatus() {
        if ($this->status) {
            echo "The system currently used by:\n";
            $this->command->describe();
        } 

        return $this->status;
    }
}