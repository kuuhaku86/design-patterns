import 'IAuth.dart';

class FacebookAuth implements IAuth {
  @override
  void authenticate(String username, String password) {
    print("Authenticated with Facebook authenticate system");
    print("$username authenticated successfully");
  }
}