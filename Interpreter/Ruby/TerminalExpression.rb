require_relative "IExpression"

class TerminalExpression < IExpression
    def initialize(data)
        @data = data
    end

    def solve(context)
        if context.include? @data
            return true
        end

        return false
    end
end