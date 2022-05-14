import ICollection from "./ICollection.js";
import UserIterator from "./UserIterator.js";

class UserCollection extends ICollection {
  constructor() {
    super();
    this.users = [];
  }

  createIterator() {
    return new UserIterator(this.users);
  }

  add(user) {
    this.users.push(user);
  }
}

export default UserCollection;