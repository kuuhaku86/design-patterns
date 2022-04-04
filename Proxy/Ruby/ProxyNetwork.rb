require_relative "INetwork"

class ProxyNetwork < INetwork
    def initialize(network)
        @network = network
        @bannedSites = [
            "abc.com",
            "xyz.com"
        ]
    end

    def connect(site)
        if @bannedSites.include?(site)
            puts "Access denied to #{site}"
        else
            @network.connect(site)
        end 
    end
end