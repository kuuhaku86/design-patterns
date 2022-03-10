<?php

require_once "Command.php";
require_once "LockingSystem.php";

class CreateCommand extends Command {
    public function __construct(LockingSystem $mediator, string $file)
    {
        parent::__construct($mediator, $file);
    }

    public function describe(){
        echo "Creating file " . $this->file . "\n";
    }
}