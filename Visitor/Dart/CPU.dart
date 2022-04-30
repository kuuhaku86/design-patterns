import 'IComputerPart.dart';
import 'IPayment.dart';

class CPU implements IComputerPart {
  String name = "CPU";

  @override
  void accept(IPayment payment) {
    payment.visit(this);
  }
}
