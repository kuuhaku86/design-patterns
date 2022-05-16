class IPayment:
  def visit(self, component):
    raise NotImplementedError