import 'IAuth.dart';

class GoogleAuth implements IAuth {
  @override
  void authenticate(String username, String password) {
    print("Authenticated with Google authenticate system");
    print("$username authenticated successfully");
  }
}
