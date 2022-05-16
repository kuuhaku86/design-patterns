import IAuth from "./IAuth.js";

class GoogleAuth extends IAuth {
  authenticate(username, password) {
    console.log("Authenticated with Google authentication system");
    console.log(`${username} authenticated successfully`);
  }
}

export default GoogleAuth;
