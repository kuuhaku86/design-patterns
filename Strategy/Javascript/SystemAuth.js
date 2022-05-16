import IAuth from "./IAuth.js";

class SystemAuth extends IAuth {
  authenticate(username, password) {
    console.log("Authenticated with own authentication system");
    console.log(`${username} authenticated successfully`);
  }
}

export default SystemAuth;
