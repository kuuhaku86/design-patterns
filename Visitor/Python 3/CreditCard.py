from IPayment import IPayment
from CPU import CPU
from VGA import VGA

class CreditCard(IPayment):
  def visit(self, component):
    if type(component) is CPU:
      print("Purchase CPU with Credit Card")
    elif type(component) is VGA:
      print("Purchase VGA with Credit Card")
