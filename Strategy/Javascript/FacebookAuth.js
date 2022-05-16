import IAuth from "./IAuth.js";

class FacebookAuth extends IAuth {
  authenticate(username, password) {
    console.log("Authenticated with Facebook authentication system");
    console.log(`${username} authenticated successfully`);
  }
}

export default FacebookAuth;