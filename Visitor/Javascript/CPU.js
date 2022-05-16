import IComputerPart from "./IComputerPart.js";

class CPU extends IComputerPart {
  constructor() {
    super();
    this.name = "CPU";
  }

  accept(payment) {
    payment.visit(this);
  }
}

export default CPU;