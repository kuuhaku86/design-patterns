<?php

require_once('WorkspaceState.php');

class Editor {
    private string $state;

    public function setState($state) {
        $this->state = $state;
    }

    public function getState() {
        return $this->state;
    }

    public function save() {
        return new WorkspaceState($this->getState());
    }

    public function restore(WorkspaceState $workspaceState) {
        $this->state = $workspaceState->getState();
    }

    public function print() {
        echo $this->state . "\n\n";
    }
}