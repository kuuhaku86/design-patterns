import 'CPU.dart';
import 'IPayment.dart';
import 'VGA.dart';

class DebitCard implements IPayment {
  @override
  void visit(component) {
    if (component is CPU) {
      print("Purchase CPU with Debit Card");
    } else if (component is VGA) {
      print("Purchase VGA with Debit Card");
    }
  }
}
