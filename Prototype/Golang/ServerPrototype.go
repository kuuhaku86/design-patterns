package main

type ServerPrototype interface {
	clone() ServerPrototype
	describe()
}