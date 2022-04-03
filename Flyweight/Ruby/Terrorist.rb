require_relative "IPlayer"

class Terrorist < IPlayer
    attr_writer :mission
    
    def doMission
        puts "Terrorist doing Task : #{@mission}"
    end
end