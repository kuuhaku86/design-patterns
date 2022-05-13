import IUser from "./IUser.js";

class Group extends IUser {
  constructor() {
    super();
    this.users = [];
  }

  add(user) {
    this.users.push(user);
  }

  inspect() {
    this.users.forEach(user => {
      user.inspect();
    });
  }
}

export default Group;