require_relative "Terrorist"
require_relative "CounterTerrorist"

class PlayerFactory
    def initialize
        @players = {}
    end

    def createPlayer(type)
        if @players[type]
            return @players[type]
        else
            player = nil

            case type
                when "Terrorist"
                    player = Terrorist.new
                    @players[type] = player
                when "CounterTerrorist"
                    player = CounterTerrorist.new
                    @players[type] = player
            end

            return player
        end
    end
end
