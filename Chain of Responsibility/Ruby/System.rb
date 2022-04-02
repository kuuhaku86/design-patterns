require_relative "Handler"
require_relative "Response"

class System < Handler
    def execute(request)
        return Response.new(code: 200, message: "OK", data: rand(100))
    end
end
