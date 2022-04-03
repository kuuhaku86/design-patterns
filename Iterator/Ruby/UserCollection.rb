require_relative "ICollection"
require_relative "UserIterator"

class UserCollection < ICollection
    def initialize
        @collection = []
    end

    def createIterator
        return UserIterator.new(@collection)
    end

    def add(user)
        @collection << user
    end
end