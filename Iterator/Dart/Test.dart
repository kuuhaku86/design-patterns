import 'User.dart';
import 'UserCollection.dart';

void main(List<String> args) {
  var userCollection = UserCollection();

  // Add user to collection
  var user = User('David');
  userCollection.add(user);
  user = User('Jack');
  userCollection.add(user);
  user = User('King');
  userCollection.add(user);

  // Get an iterator
  var iterator = userCollection.createIterator();

  // Loop all the added user
  while (iterator.hasNext()) {
    user = iterator.next();
    user.describe();
  }
}
