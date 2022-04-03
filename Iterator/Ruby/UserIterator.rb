require_relative "IIterator"

class UserIterator < IIterator
    def initialize(collection)
        @collection = collection
        @position = 0
    end

    def hasNext
        return !(@position >= @collection.length)
    end

    def next
        if hasNext
            @position += 1
            return @collection[@position - 1]
        end
    end
end