require_relative "IPlayer"

class CounterTerrorist < IPlayer
    attr_writer :mission

    def doMission
        puts "Counter Terrorist doing Task : #{@mission}"
    end
end