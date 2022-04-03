require_relative "ICommand"

class Rotate < ICommand
    def initialize(target, degree)
        @target = target
        @degree = degree
    end

    def execute
        @target.rotate(@degree)
    end
end