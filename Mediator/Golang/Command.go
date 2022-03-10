package main

type Command interface {
	execute()
	describe()
	finish()
}