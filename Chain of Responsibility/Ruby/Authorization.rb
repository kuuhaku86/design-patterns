require_relative "Handler"
require_relative "Response"

class Authorization < Handler
    def execute(request)
        if request.authorized
            puts "Authorized"
            return @next_handler.execute(request)
        else
            return Response.new(
                code: 403, 
                message: "Unauthorized",
                data: nil
            )
        end
    end
end