class LoginSystem
    def initialize(strategy)
        @strategy = strategy
    end

    def login(username, password)
        puts "Starting authentication process"
        @strategy.authenticate(username, password)
        puts
    end
end