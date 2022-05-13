from IPrinter import IPrinter

class PrinterDecorator(IPrinter):
  def __init__(self, printer):
    super().__init__()
    self.__printer = printer
  
  def print(self):
    self.__printer.print()

