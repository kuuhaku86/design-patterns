class TThread
    def initialize(number)
        @number = number
    end

    def describe
        puts "This is thread number #{@number}"
    end
end