import UserInteface from "./UserInterface.js";

class User extends UserInteface {
  isNull() {
    return false;
  }

  buy() {
    console.log(`User ${this.name} is buying the product`);
  }
}

export default User;