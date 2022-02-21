<?php

require_once('WorkspaceState.php');

class EditorHistoryCaretaker {
    private array $stateList;

    public function add(WorkspaceState $workspaceState) {
        $this->stateList[] = $workspaceState;
    }

    public function get(int $index) { 
        if (count($this->stateList) < 1) {
            return null;
        }

        if (count($this->stateList) < $index + 1) {
            return $this->stateList[count($this->stateList) - 1];
        } else {
            return $this->stateList[$index];
        }
    }
}