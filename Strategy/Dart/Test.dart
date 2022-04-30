import 'FacebookAuth.dart';
import 'GoogleAuth.dart';
import 'IAuth.dart';
import 'LoginSystem.dart';
import 'SystemAuth.dart';

void main(List<String> args) {
  // Testing system auth
  IAuth auth = SystemAuth();
  var loginSystem = LoginSystem(auth);
  loginSystem.login("King", "King123");

  // Testing google auth
  auth = GoogleAuth();
  loginSystem = LoginSystem(auth);
  loginSystem.login("Jack", "Jack123");

  // Testing facebook auth
  auth = FacebookAuth();
  loginSystem = LoginSystem(auth);
  loginSystem.login("Queen", "Queen123");
}