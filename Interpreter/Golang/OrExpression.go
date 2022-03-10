package main

import "strings"

type OrExpression struct {
	expression1 IExpression
	expression2 IExpression
}

func (orExpression *OrExpression) solve(context string) bool {
	if !strings.Contains(context, "||") {
		return false
	}

	return orExpression.expression1.solve(context) || orExpression.expression2.solve(context)
} 