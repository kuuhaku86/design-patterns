require_relative "IConnectionFactory.rb"
require_relative "TeamPromoHTTPConnection.rb"
require_relative "TeamPromoRPCConnection.rb"

class TeamPromoConnectionFactory < IConnectionFactory
    def createHTTPConnection
        TeamPromoHTTPConnection.new
    end

    def createRPCConnection
        TeamPromoRPCConnection.new
    end
end

