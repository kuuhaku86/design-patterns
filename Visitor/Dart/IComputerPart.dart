import 'IPayment.dart';

abstract class IComputerPart {
  void accept(IPayment payment);
}
