package main

import "strings"

type TerminalExpression struct {
	data string
}

func (terminalExpression *TerminalExpression) solve(context string) bool {
	return strings.Contains(context, terminalExpression.data)
} 