require_relative "TerminalExpression"
require_relative "AndExpression"
require_relative "OrExpression"

expression1 = TerminalExpression.new("Condition1")
expression2 = TerminalExpression.new("Condition2")
andExpression = AndExpression.new(expression1, expression2)
orExpression = OrExpression.new(expression1, expression2)

# Check for and condition
puts andExpression.solve("Condition1 && Condition2")
puts orExpression.solve("Condition1 && Condition2")

# Check for or condition
puts andExpression.solve("Condition1 || Condition2")
puts orExpression.solve("Condition1 || Condition2")