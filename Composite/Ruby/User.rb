require_relative "IUser"

class User < IUser
    def initialize(name)
        @name = name
    end

    def inspect
        puts "The name of this user is #{@name}"
    end
end