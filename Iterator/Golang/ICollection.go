package main

type ICollection interface {
	createIterator() IIterator
}

