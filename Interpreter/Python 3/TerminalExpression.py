from IExpression import IExpression

class TerminalExpression(IExpression):
  def __init__(self, data):
    super().__init__()
    self.__data = data
  
  def solve(self, context):
    if self.__data in context:
      return True

    return False
    