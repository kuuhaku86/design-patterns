package main

type IIterator interface {
	hasNext() bool
	next() *User
}