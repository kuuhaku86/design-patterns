require_relative "ICommand"

class Inspect < ICommand
    def initialize(target)
        @target = target
    end

    def execute
        puts @target
    end
end