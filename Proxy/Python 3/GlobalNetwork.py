from INetwork import INetwork

class GlobalNetwork(INetwork):
  def connect(self, site):
    print('Connected to', site)