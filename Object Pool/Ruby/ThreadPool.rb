require_relative "Thread.rb"

class ThreadPool
    def initialize
        @threads = []
        @counter = 2

        for i in 1..2 do
            thread = TThread.new(i)
            @threads << thread
        end
    end

    def get
        thread = nil

        if @threads.length > 0
            thread = @threads.shift
        else
            @counter += 1

            thread = TThread.new(@counter)
        end

        return thread
    end

    def release(thread)
        @threads << thread
    end
end
