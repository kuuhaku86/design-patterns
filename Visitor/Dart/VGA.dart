import 'IComputerPart.dart';
import 'IPayment.dart';

class VGA implements IComputerPart {
  String name = "VGA";

  @override
  void accept(IPayment payment) {
    payment.visit(this);
  }
}
