import 'UserInterface.dart';

class NullUser implements UserInterface {
  @override
  bool isNull() => true;

  @override
  void buy() {
    print("User not available");
  }
}