class Command
    def initialize(mediator, file)
        @mediator = mediator
        @file = file
    end

    def describe
        raise NotImplementedError
    end

    def execute
        if @mediator.checkStatus
            puts "Command not executed"
        else
            describe
            @mediator.lock(self)
            puts "Command executed"
        end
    end

    def finish
        @mediator.unlock
    end
end