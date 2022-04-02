require_relative "IMessageSender"

class TextMessageSender < IMessageSender
    def send(message)
        puts "Message: #{message}"
        puts "Send with Text Message Sender"
        puts "Message send successfully"
    end
end