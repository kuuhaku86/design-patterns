require_relative "ILogger"

class ErrorLogger < ILogger
    def print(message)
        puts "#{Time.new} [ERROR]: #{message}"
    end
end