import IPayment from "./IPayment.js";
import CPU from "./CPU.js";
import VGA from "./VGA.js";

class DebitCard extends IPayment {
  visit(component) {
    if (component instanceof CPU) {
      console.log("Charging debit card for CPU");
    } else if (component instanceof VGA) {
      console.log("Charging debit card for VGA");
    }
  }
}

export default DebitCard;
