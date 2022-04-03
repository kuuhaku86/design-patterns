require_relative "ILogger"

class InfoLogger < ILogger
    def print(message)
        puts "#{Time.new} [INFO]: #{message}"
    end
end