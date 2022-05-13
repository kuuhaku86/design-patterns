import IPrinter from "./IPrinter.js";

class PrinterDecorator extends IPrinter {
  constructor(printer) {
    super();
    this.printer = printer;
  }

  print() {
    this.printer.print();
  }
}

export default PrinterDecorator;