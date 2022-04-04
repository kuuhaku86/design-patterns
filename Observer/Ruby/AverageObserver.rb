require_relative "IObserver"

class AverageObserver < IObserver
    def initialize
        @averageCPU = 0.0
        @averageRAM = 0.0
        @counter = 0
        @resources = []
    end

    def update(cpu, ram)
        @resources << [cpu, ram]
        tempCPU = 0
        tempRAM = 0
        @counter += 1

        @resources.each do |resource|
            tempCPU += resource[0]
            tempRAM += resource[1]
        end

        @averageCPU = tempCPU.to_f / @counter
        @averageRAM = tempRAM.to_f / @counter

        puts "Current Average CPU: #{@averageCPU}\nCurrent Average RAM: #{@averageRAM}"
    end
end