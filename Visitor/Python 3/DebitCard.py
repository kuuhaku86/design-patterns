from IPayment import IPayment
from CPU import CPU
from VGA import VGA

class DebitCard(IPayment):
  def visit(self, component):
    if type(component) is CPU:
      print("Purchase CPU with Debit Card")
    elif type(component) is VGA:
      print("Purchase VGA with Debit Card")
