import 'TwoFactorAuthentication.dart';
import 'TwoFactorEmail.dart';
import 'TwoFactorPhone.dart';

void main(List<String> args) {
  // Testing two factor for email
  TwoFactorAuthentication twoFactor = TwoFactorEmail();
  twoFactor.authenticate("Jack", "Jack123");

  // Testing two factor for phone
  twoFactor = TwoFactorPhone();
  twoFactor.authenticate("King", "King123");
}
