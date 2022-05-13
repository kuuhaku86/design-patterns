from PrinterDecorator import PrinterDecorator

class MonochromeDecorator(PrinterDecorator):
  def print(self):
    super().print()
    print("Printed with monochrome color")
