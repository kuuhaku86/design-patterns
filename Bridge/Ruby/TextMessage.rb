require_relative "Message"

class TextMessage < Message
    def initialize(messageSender)
        super(messageSender)
    end

    def sendMessage(message)
        @messageSender.send(message)
    end
end