require_relative "Handler"
require_relative "Response"

class Authentication < Handler
    def execute(request)
        if request.authenticated
            puts "Authenticated"
            return @next_handler.execute(request)
        else
            return Response.new(
                code: 403, 
                message: "Unauthenticated",
                data: nil
            )
        end
    end
end
