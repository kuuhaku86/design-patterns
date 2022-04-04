class Database
    @@database = nil

    def initialize
        @content = "User Data"
    end

    def self.getInstance
        if !@@database
            puts "New database instance created"
            @@database = Database.new
        end

        return @@database
    end

    def describe
        puts "The database contains: #{@content}"
    end
end