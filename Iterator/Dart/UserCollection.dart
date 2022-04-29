import 'ICollection.dart';
import 'IIterator.dart';
import 'User.dart';
import 'UserIterator.dart';

class UserCollection implements ICollection {
  List<User> _users = [];

  @override
  IIterator createIterator() {
    return UserIterator(_users);
  }

  add(User user) {
    _users.add(user);
  }
}