from PrinterDecorator import PrinterDecorator

class ColorfulDecorator(PrinterDecorator):
  def print(self):
    super().print()
    print("Printed with colorful color")
