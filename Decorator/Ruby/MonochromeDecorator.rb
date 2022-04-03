require_relative "PrinterDecorator"

class MonochromeDecorator < PrinterDecorator
    def initialize(printer)
        super(printer)
    end

    def print
        super
        puts "Printed with monochrome color"
    end
end