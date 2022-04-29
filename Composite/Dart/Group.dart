import 'IUser.dart';

class Group implements IUser {
  List<IUser> _users = [];

  void add(IUser user) {
    _users.add(user);
  }

  @override
  void getUserDetails() {
    for (var user in _users) {
      user.getUserDetails();
    }
  }
}
