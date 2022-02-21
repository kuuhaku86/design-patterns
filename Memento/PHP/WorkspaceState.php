<?php

class WorkspaceState {
    private string $state;

    public function __construct(string $state)
    {
        $this->state = $state;
    }

    public function getState() 
    {
        return $this->state;
    }
}