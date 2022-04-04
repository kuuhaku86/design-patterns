require_relative "TwoFactorAuthentication"

class TwoFactorPhone < TwoFactorAuthentication
    def getData(username)
        puts "Getting phone data for #{username}"
    end

    def sendNotification(username)
        puts "Sending sms to #{username}"
    end

    def match(username)
        puts "Matching #{username} with the sms code"
    end
end