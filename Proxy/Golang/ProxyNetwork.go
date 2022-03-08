package main

import "fmt"

type ProxyNetwork struct {
	network INetwork
	bannedSites []string
}

func NewProxyNetwork(network INetwork) *ProxyNetwork {
	return &ProxyNetwork{
		network: network,
		bannedSites: []string{
			"abc.com",
			"xyz.com",
		},
	}
}

func (proxyNetwork *ProxyNetwork) connect(sites string)  {
	for _, bannedSite := range proxyNetwork.bannedSites {
        if sites == bannedSite {
			fmt.Println("Sites", sites, "Blocked")
			return
        }
    }

	proxyNetwork.network.connect(sites)
}