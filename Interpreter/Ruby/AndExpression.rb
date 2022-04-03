require_relative "IExpression"

class AndExpression < IExpression
    def initialize(expression1, expression2)
        @expression1 = expression1
        @expression2 = expression2
    end

    def solve(context)
        if !context.include? "&&"
            return false
        end

        return @expression1.solve(context) && @expression2.solve(context)
    end
end