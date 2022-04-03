require_relative "IPrinter"

class PrinterDecorator < IPrinter
    def initialize(printer)
        @printer = printer
    end

    def print
        @printer.print
    end
end