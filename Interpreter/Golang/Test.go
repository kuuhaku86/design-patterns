package main

import "fmt"

func main()  {
	expression1 := &TerminalExpression{"Condition1"}
	expression2 := &TerminalExpression{"Condition2"}
	andExpression := &AndExpression{expression1, expression2}
	orExpression := &OrExpression{expression1, expression2}

	// Check for and condition
	fmt.Println(andExpression.solve("Condition1 && Condition2"))
	fmt.Println(orExpression.solve("Condition1 && Condition2"))

	// Check for or condition
	fmt.Println(andExpression.solve("Condition1 || Condition2"))
	fmt.Println(orExpression.solve("Condition1 || Condition2"))
}