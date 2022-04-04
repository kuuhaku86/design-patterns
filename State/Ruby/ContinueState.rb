require_relative "IState"

class ContinueState < IState
    def action
        puts "Download continued"
    end
end