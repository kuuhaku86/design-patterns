from PlayerFactory import PlayerFactory
import random

terroristMission = [
  "Plant Bomb",
  "Watch for Counter Terrorist",
  "Secure Place for Plant Bomb"
]

counterTerroristMission = [
  "Defuse Bomb",
  "Searching for Terrorist",
  "Take Over the Area"
]

types = [
  "Terrorist",
  "CounterTerrorist"
]

playerFactory = PlayerFactory()

for i in range(0, 21):
  type = random.choice(types)
  player = playerFactory.createPlayer(type)

  if type == types[0]:
    task = random.choice(terroristMission)
    player.setMission(task)
  else:
    task = random.choice(counterTerroristMission)
    player.setMission(task)

  player.doMission()
