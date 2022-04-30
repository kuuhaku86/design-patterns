import 'CPU.dart';
import 'CreditCard.dart';
import 'DebitCard.dart';
import 'VGA.dart';

void main(List<String> args) {
  var cpu = CPU();
  var vga = VGA();

  // Test for credit card visitor
  var creditCard = CreditCard();
  cpu.accept(creditCard);
  vga.accept(creditCard);

  // Test for credit card visitor
  var debitCard = DebitCard();
  cpu.accept(debitCard);
  vga.accept(debitCard);
}