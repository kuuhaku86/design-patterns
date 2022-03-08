package main

type PlayerFactory struct {
	players map[string]IPlayer
}

func (playerFactory *PlayerFactory) createPlayer(playerType string) IPlayer {
	if playerFactory.players == nil {
		playerFactory.players = make(map[string]IPlayer)
	}

	if val, ok := playerFactory.players[playerType]; ok {
		return val
	} else {
		var player IPlayer		

		switch playerType {
			case "Terrorist":
				player = &Terrorist{}
				playerFactory.players[playerType] = player

				return player
				break
			
			case "CounterTerrorist":
				player = &CounterTerrorist{}
				playerFactory.players[playerType] = player

				return player
				break
		}
	}
	return nil
}