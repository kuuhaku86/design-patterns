require_relative "UserInterface"

class NullUser < UserInterface
    def isNull
        true
    end

    def buy
        puts "User not available"
    end
end