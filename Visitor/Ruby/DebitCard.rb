require_relative "IPayment"
require_relative "CPU"
require_relative "VGA"

class DebitCard < IPayment
    def visit(component)
        if component.is_a?(CPU)
            puts "Purchase CPU with Debit Card"
        elsif component.is_a?(VGA)
            puts "Purchase VGA with Debit Card"
        end
    end
end