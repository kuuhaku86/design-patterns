import 'UserInterface.dart';

class User implements UserInterface {
  String? _name;

  User(this._name);

  @override
  bool isNull() => false;

  @override
  void buy() {
    print("User $_name buys the product");
  }
}