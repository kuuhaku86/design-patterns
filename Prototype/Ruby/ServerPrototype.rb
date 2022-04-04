class ServerPrototype
    def initialize(content)
        @content = content
    end

    def describe
        puts "The content of this server is #{@content}"
    end

    def clone
        self.dup
    end
end