from Printer import Printer
from ColorfulDecorator import ColorfulDecorator
from MonochromeDecorator import MonochromeDecorator

printer = Printer()
colorfulDecorator = ColorfulDecorator(printer)
monochromeDecorator = MonochromeDecorator(printer)

# Test for colorful decorator
colorfulDecorator.print()

# Test for monochrome decorator
monochromeDecorator.print()
