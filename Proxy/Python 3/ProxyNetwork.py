from INetwork import INetwork

class ProxyNetwork(INetwork):
  def __init__(self, network):
    super().__init__()
    self.network = network
    self.banned_sites = [
      "abc.com",
      "xyz.com"
    ]

  def connect(self, site):
    if site in self.banned_sites:
      print("Access to", site, "has been denied.")
    else:
      self.network.connect(site)