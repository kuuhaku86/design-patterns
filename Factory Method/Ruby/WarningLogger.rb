require_relative "ILogger"

class WarningLogger < ILogger
    def print(message)
        puts "#{Time.new} [WARNING]: #{message}"
    end
end