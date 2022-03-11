package main

type IObserver interface {
	update(int, int)
}