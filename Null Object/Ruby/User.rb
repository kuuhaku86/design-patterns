require_relative "UserInterface"

class User < UserInterface
    def initialize(name)
        @name = name
    end

    def isNull
        false
    end

    def buy 
        puts "User #{@name} buys the product"
    end
end