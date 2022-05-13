import PrinterDecorator from "./PrinterDecorator.js"

class MonochromeDecorator extends PrinterDecorator {
  print() {
    super.print();
    console.log("Printed with monochrome color");
  }
}

export default MonochromeDecorator;