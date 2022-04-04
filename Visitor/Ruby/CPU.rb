require_relative "IComputerPart"

class CPU < IComputerPart
    attr_reader :name

    def initialize
        @name = "CPU"
    end

    def accept(payment)
        payment.visit(self)
    end
end