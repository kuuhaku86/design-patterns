require_relative "ICommand"

class Resize < ICommand
    def initialize(target, percentage)
        @target = target
        @percentage = percentage
    end

    def execute
        @target.resize(@percentage)
    end
end