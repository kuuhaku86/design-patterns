require_relative "IState"

class PauseState < IState
    def action
        puts "Download paused"
    end
end