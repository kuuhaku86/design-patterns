require_relative "IUser"

class Group < IUser
    def initialize
        @users = []
    end

    def add(user)
        @users << user
    end

    def inspect
        @users.each do |user|
            user.inspect
        end
    end
end
