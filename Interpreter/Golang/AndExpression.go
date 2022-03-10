package main

import "strings"

type AndExpression struct {
	expression1 IExpression
	expression2 IExpression
}

func (andExpression *AndExpression) solve(context string) bool {
	if !strings.Contains(context, "&&") {
		return false
	}

	return andExpression.expression1.solve(context) && andExpression.expression2.solve(context)
} 