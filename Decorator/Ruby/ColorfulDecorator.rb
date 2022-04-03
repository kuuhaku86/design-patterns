require_relative "PrinterDecorator"

class ColorfulDecorator < PrinterDecorator
    def initialize(printer)
        super(printer)
    end

    def print
        super
        puts "Printed with colorful color"
    end
end