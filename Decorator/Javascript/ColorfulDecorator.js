import PrinterDecorator from "./PrinterDecorator.js";

class ColorfulDecorator extends PrinterDecorator {
  print() {
    super.print();
    console.log("Printed with colorful color");
  }
}

export default ColorfulDecorator;