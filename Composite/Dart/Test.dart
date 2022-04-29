import 'Group.dart';
import 'IUser.dart';
import 'User.dart';

void main(List<String> args) {
  Group group = Group();

  // Add user
  User user = User("Jack");
  group.add(user);

  // Add user
  user = User("King");
  group.add(user);

  // Add user
  user = User("Queen");
  group.add(user);

  // Test getUserDetail
  group.getUserDetails();
}
