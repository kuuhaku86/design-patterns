import UserInteface from "./UserInterface.js";

class NullUser extends UserInteface {
  isNull() {
    return true;
  }

  buy() {
    console.log("User not available");
  }
}

export default NullUser;