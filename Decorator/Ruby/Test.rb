require_relative "Printer"
require_relative "ColorfulDecorator"
require_relative "MonochromeDecorator"

printer = Printer.new
colorfulDecorator = ColorfulDecorator.new(printer)
monochromeDecorator = MonochromeDecorator.new(printer)

# Test for colorful decorator
colorfulDecorator.print

# Test for monochrome decorator
monochromeDecorator.print