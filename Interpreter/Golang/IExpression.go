package main

type IExpression interface {
	solve(context string) bool
}