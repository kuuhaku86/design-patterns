class LockingSystem
    def initialize
        @status = false
        @command = nil
    end

    def lock(command)
        @command = command
        @status = true
    end

    def unlock
        @status = false
    end

    def checkStatus
        if @status
            puts "The system is currently used by:"
            @command.describe
        end

        return @status
    end
end