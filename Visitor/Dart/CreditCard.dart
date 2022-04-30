import 'CPU.dart';
import 'IPayment.dart';
import 'VGA.dart';

class CreditCard implements IPayment {
  @override
  void visit(component) {
    if (component is CPU) {
      print("Purchase CPU with Credit Card");
    } else if (component is VGA) {
      print("Purchase VGA with Credit Card");
    }
  }
}
