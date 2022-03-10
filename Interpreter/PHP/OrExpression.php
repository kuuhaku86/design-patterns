<?php

class OrExpression implements IExpression {
    private IExpression $expression1, $expression2;

    public function __construct(IExpression $expression1, IExpression $expression2)
    {
        $this->expression1 = $expression1;
        $this->expression2 = $expression2;
    }

    public function solve(string $context) {
        if (strpos($context, "||") === false) return false;

        return $this->expression1->solve($context) || $this->expression2->solve($context);
    }
}