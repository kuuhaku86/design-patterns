class IConnectionFactory
    def createRPCConnection
        raise NotImplementedError
    end

    def createHTTPConnection
        raise NotImplementedError
    end
end