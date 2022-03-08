package main

type IPlayer interface {
	doMission()
	assignTask(string)
}