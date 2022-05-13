import IUser from "./IUser.js";

class User extends IUser {
  constructor(name) {
    super();
    this.name = name;
  }

  inspect() {
    console.log(`The name of this user is ${this.name}`)
  }
}

export default User;