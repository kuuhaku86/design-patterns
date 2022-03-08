package main

import (
	"math/rand"
)

func main()  {
	terroristMission := []string{
        "Plant Bomb",
        "Watch for Counter Terrorist",
        "Secure Place for Plant Bomb",
	}
	counterTerroristMission := []string{
        "Defuse Bomb",
        "Searching for Terrorist",
        "Take Over The Area",
	}
	types := []string{
		"Terrorist",
		"CounterTerrorist",
	}
	playerFactory := PlayerFactory{}

	var player IPlayer
	var random int
	var task string

	for i := 0; i < 20; i++ {
		random = rand.Int() % len(types)
		current_type := types[random]

		player = playerFactory.createPlayer(current_type)

		if current_type == types[0] {
			random = rand.Int() % len(terroristMission)
			task = terroristMission[random]
		} else {
			random = rand.Int() % len(counterTerroristMission)
			task = counterTerroristMission[random]
		}

		player.assignTask(task)
		player.doMission()
	}
}