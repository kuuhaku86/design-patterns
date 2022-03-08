package main

func main()  {
	globalNetwork := &GlobalNetwork{}
	proxyNetwork := NewProxyNetwork(globalNetwork)

	// Connect to unblocked sites
	proxyNetwork.connect("google.com")
	proxyNetwork.connect("yahoo.com")

	// Connect to blocked sites
	proxyNetwork.connect("abc.com")
	proxyNetwork.connect("xyz.com")
}