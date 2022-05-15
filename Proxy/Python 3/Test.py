from GlobalNetwork import GlobalNetwork
from ProxyNetwork import ProxyNetwork

globalNetwork = GlobalNetwork()
proxyNetwork = ProxyNetwork(globalNetwork)

# Test for unblocked sites
proxyNetwork.connect("www.google.com")
proxyNetwork.connect("www.yahoo.com")

# Test for blocked sites
proxyNetwork.connect("abc.com")
proxyNetwork.connect("xyz.com")
