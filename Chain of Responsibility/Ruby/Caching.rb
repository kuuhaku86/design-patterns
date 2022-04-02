require_relative "Handler"
require_relative "Response"

class Caching < Handler
    def initialize()
        @data = {}
    end

    def execute(request)
        if @data[request.route]
            puts "Cached"

            return @data[request.route]
        else
            temp_data = @next_handler.execute(request)
            @data[request.route] = temp_data

            return temp_data
        end
    end
end