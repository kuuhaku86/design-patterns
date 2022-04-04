require_relative "IObserver"

class MaxObserver < IObserver
    def initialize
        @maxCPU = 0
        @maxRAM = 0
    end

    def update(cpu, ram)
        @maxCPU = [@maxCPU, cpu].max
        @maxRAM = [@maxRAM, ram].max

        puts "Current Max CPU: #{@maxCPU}\nCurrent Max RAM: #{@maxRAM}"
    end
end