require_relative "TwoFactorAuthentication"

class TwoFactorEmail < TwoFactorAuthentication
    def getData(username)
        puts "Getting email data for #{username}"
    end

    def sendNotification(username)
        puts "Sending email notification to #{username}"
    end

    def match(username)
        puts "Matching #{username} with the code"
    end
end