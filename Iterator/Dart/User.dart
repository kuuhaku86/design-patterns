class User {
  String? _name;

  User(this._name);

  void describe() {
    print("The name of this user is $_name");
  }
}
