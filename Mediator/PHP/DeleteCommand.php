<?php

require_once "Command.php";
require_once "LockingSystem.php";

class DeleteCommand extends Command {
    public function __construct(LockingSystem $mediator, string $file)
    {
        parent::__construct($mediator, $file);
    }

    public function describe(){
        echo "Deleting file " . $this->file . "\n";
    }
}