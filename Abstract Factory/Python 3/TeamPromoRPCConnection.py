import imp
from IRPCConnection import IRPCConnection

class TeamPromoRPCConnection(IRPCConnection):
  def callProcedure(self):
    print("Calling procedure from Promo Team")