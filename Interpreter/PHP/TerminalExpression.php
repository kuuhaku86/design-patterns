<?php

require_once "IExpression.php";

class TerminalExpression implements IExpression {
    private string $data;
    
    public function __construct(string $data)
    {
        $this->data = $data;
    }

    public function solve(string $context) {
        if (strpos($context, $this->data) !== false) {
            return true;
        }

        return false;
    }
}