require_relative "IPayment"
require_relative "CPU"
require_relative "VGA"

class CreditCard < IPayment
    def visit(component)
        if component.is_a?(CPU)
            puts "Purchase CPU with Credit Card"
        elsif component.is_a?(VGA)
            puts "Purchase VGA with Credit Card"
        end
    end
end