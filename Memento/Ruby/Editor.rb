require_relative "WorkspaceState"

class Editor
    attr_accessor :state

    def save
        WorkspaceState.new(@state)
    end

    def restore(state)
        @state = state.state
    end

    def print
        puts @state
    end
end

