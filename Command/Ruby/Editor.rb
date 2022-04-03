class Editor
    def initialize
        @commandList = []
    end

    def input(command)
        @commandList.push(command)
    end

    def executeCommands
        @commandList.each do |command|
            command.execute
        end

        @commandList = []
    end
end