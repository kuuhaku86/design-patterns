require_relative "WorkspaceState"

class EditorHistoryCaretaker
    def initialize
        @states = []
    end

    def add(state)
        @states.push(state)
    end

    def get(index)
        if @states.length < 1
            return nil
        end

        if index < @states.length
            @states[index]
        else
            @states[@states.length - 1]
        end
    end
end