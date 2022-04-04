require_relative "IComputerPart"

class VGA < IComputerPart
    attr_reader :name

    def initialize
        @name = "VGA"
    end

    def accept(payment)
        payment.visit(self)
    end
end