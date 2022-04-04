require_relative "INetwork"

class GlobalNetwork < INetwork
    def connect(site)
        puts "Connected to #{site}"
    end
end