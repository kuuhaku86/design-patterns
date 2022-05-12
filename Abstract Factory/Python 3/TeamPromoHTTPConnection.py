import imp
from IHTTPConnection import IHTTPConnection

class TeamPromoHTTPConnection(IHTTPConnection):
  def callAPI(self):
    print("Calling API from Promo Team")