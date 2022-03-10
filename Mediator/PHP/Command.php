<?php

abstract class Command {
    protected LockingSystem $mediator;
    protected string $file;

    public abstract function describe();

    public function __construct(LockingSystem $mediator, string $file)
    {
        $this->mediator = $mediator;
        $this->file = $file;
    }

    public function execute() {
        if (!$this->mediator->checkStatus()) {
            $this->describe();
            $this->mediator->lock($this);
            echo "Command executed\n";
        } else {
            echo "Command not executed\n";
        }
    }

    public function finish() {
        $this->mediator->unlock();
    }
}