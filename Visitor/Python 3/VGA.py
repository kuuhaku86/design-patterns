from IComputerPart import IComputerPart

class VGA(IComputerPart):
  def __init__(self):
    super().__init__()
    self.name = 'VGA'

  def accept(self, payment):
    payment.visit(self)
