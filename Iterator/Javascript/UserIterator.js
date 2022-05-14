import IIterator from './IIterator.js';

class UserIterator extends IIterator {
  constructor(users) {
    super();
    this.users = users;
    this.index = 0;
  }

  hasNext() {
    return this.index < this.users.length;
  }

  next() {
    if (this.hasNext()) {
      return this.users[this.index++];
    } else if (this.users.length > 0) {
      return this.users[this.users.length - 1];
    }
  }
}

export default UserIterator;