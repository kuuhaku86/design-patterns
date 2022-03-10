<?php

require_once('TerminalExpression.php');
require_once('AndExpression.php');
require_once('OrExpression.php');

class Test {
    public static function describe($condition) {
        if ($condition == 1) {
            echo "True\n";
        } else {
            echo "False\n";
        }
    }

    public static function main() {
        $expression1 = new TerminalExpression("Condition1");
        $expression2 = new TerminalExpression("Condition2");
        $andExpression = new AndExpression($expression1, $expression2);
        $orExpression = new OrExpression($expression1, $expression2);

        // Check for and condition
        Test::describe($andExpression->solve("Condition1 && Condition2") . "\n");
        Test::describe($orExpression->solve("Condition1 && Condition2") . "\n");

        // Check for or condition
        Test::describe($andExpression->solve("Condition1 || Condition2") . "\n");
        Test::describe($orExpression->solve("Condition1 || Condition2") . "\n");
    }
}

Test::main();

