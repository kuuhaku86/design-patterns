require_relative "GlobalNetwork"
require_relative "ProxyNetwork"

globalNetwork = GlobalNetwork.new
proxyNetwork = ProxyNetwork.new(globalNetwork)

# Test for unblocked sites
proxyNetwork.connect("www.google.com")
proxyNetwork.connect("www.yahoo.com")

# Test for blocked sites
proxyNetwork.connect("abc.com")
proxyNetwork.connect("xyz.com")