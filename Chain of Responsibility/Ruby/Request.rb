class Request
    attr_reader :authenticated, :authorized, :route

    def initialize(authenticated:, authorized:, route:)
        @authenticated = authenticated
        @authorized = authorized
        @route = route
    end
end