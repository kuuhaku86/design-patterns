class Message
    def initialize(messageSender)
        @messageSender = messageSender
    end

    def sendMessage(message)
        raise NotImplementedError
    end
end