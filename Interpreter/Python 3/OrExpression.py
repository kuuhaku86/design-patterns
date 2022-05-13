from IExpression import IExpression

class OrExpression(IExpression):
  def __init__(self, expression1, expression2):
    super().__init__()
    self.__expression1 = expression1
    self.__expression2 = expression2
  
  def solve(self, context):
    if "||" not in context:
      return False

    return self.__expression1.solve(context) or self.__expression2.solve(context)
