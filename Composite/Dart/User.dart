import 'IUser.dart';

class User implements IUser {
  String? _name;

  User(this._name);

  @override
  void getUserDetails() {
    print("The name of this user is $_name");
  }
}
