import IPayment from "./IPayment.js";
import CPU from "./CPU.js";
import VGA from "./VGA.js";

class CreditCard extends IPayment {
  visit(component) {
    if (component instanceof CPU) {
      console.log("Charging credit card for CPU");
    } else if (component instanceof VGA) {
      console.log("Charging credit card for VGA");
    }
  }
}

export default CreditCard;