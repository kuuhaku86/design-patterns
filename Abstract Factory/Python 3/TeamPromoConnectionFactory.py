from IConnectionFactory import IConnectionFactory
from TeamPromoHTTPConnection import TeamPromoHTTPConnection
from TeamPromoRPCConnection import TeamPromoRPCConnection

class TeamPromoConnectionFactory(IConnectionFactory):
  def createHTTPConnection(self):
    return TeamPromoHTTPConnection()

  def createRPCConnection(self):
    return TeamPromoRPCConnection()