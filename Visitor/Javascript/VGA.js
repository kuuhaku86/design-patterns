import IComputerPart from "./IComputerPart.js";

class VGA extends IComputerPart {
  constructor() {
    super();
    this.name = "VGA";
  }

  accept(payment) {
    payment.visit(this);
  }
}

export default VGA;
