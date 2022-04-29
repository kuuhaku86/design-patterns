import 'NullUser.dart';
import 'User.dart';
import 'UserInterface.dart';

void main(List<String> args) {
  List<UserInterface> users = [
    User("Jack"),
    NullUser(),
    User("King"),
    User("Queen"),
    NullUser()
  ];

  // Check for buy method
  for (UserInterface user in users) {
    user.buy();
  }

  // Check for isNull method
  for (UserInterface user in users) {
    if (user.isNull()) {
      print("User is null object");
    } else {
      print("User is not null object");
    }
  }
}
