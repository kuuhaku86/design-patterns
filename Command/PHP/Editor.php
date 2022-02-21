<?php

require_once('ICommand.php');

class Editor {
    private array $commandList;

    public function input(ICommand $command) {
        $this->commandList[] = $command;
    }

    public function executeCommands() {
        foreach ($this->commandList as $command) {
            $command->execute();
        }

        $this->commandList = [];
    }
}