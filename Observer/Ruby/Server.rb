class Server
    def initialize
        @observers = []
        @cpu = 0
        @ram = 0
    end

    def attach(observer)
        @observers << observer
    end

    def updateResources
        @cpu = rand(100)
        @ram = rand(100)

        @observers.each do |observer|
            observer.update(@cpu, @ram)
        end
    end

    def describeResources
        puts "Current CPU: #{@cpu}\nCurrent RAM: #{@ram}"
    end
end