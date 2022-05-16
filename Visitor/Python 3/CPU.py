from IComputerPart import IComputerPart

class CPU(IComputerPart):
  def __init__(self):
    super().__init__()
    self.name = 'CPU'

  def accept(self, payment):
    payment.visit(self)