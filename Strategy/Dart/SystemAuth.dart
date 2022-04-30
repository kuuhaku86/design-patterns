import 'IAuth.dart';

class SystemAuth implements IAuth {
  @override
  void authenticate(String username, String password) {
    print("Authenticated with System's own authenticate system");
    print("$username authenticated successfully");
  }
}

