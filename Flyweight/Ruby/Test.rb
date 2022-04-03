require_relative "PlayerFactory"

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

playerFactory = PlayerFactory.new

for i in 0..20 do
    type = types[rand(types.length)]
    player = playerFactory.createPlayer(type)

    if type == types[0]
        task = terroristMission[rand(terroristMission.length)]
        player.mission = task
    else
        task = counterTerroristMission[rand(counterTerroristMission.length)]
        player.mission = task
    end

    player.doMission
end