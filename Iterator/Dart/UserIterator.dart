import 'IIterator.dart';
import 'User.dart';
import 'UserCollection.dart';

class UserIterator implements IIterator {
  List<User>? _collection;
  int position = 0;

  UserIterator(this._collection);

  @override
  bool hasNext() {
    var length = _collection?.length ?? 0;

    return position < length;
  }

  @override
  next() {
    if (hasNext()) {
      return _collection![position++];
    }
  }
}
