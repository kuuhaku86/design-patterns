import 'IAuth.dart';

class LoginSystem {
  IAuth? _strategy;

  LoginSystem(this._strategy);

  void login(String username, String password) {
    print("Starting Authentication Process");
    _strategy?.authenticate(username, password);
    print("");
  }
}
