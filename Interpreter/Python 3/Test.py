from TerminalExpression import TerminalExpression
from AndExpreession import AndExpression
from OrExpression import OrExpression

expression1 = TerminalExpression("Condition1")
expression2 = TerminalExpression("Condition2")
andExpression = AndExpression(expression1, expression2)
orExpression = OrExpression(expression1, expression2)

# Check for and condition
print(andExpression.solve("Condition1 && Condition2"))
print(orExpression.solve("Condition1 && Condition2"))

# Check for or condition
print(andExpression.solve("Condition1 || Condition2"))
print(orExpression.solve("Condition1 || Condition2"))
