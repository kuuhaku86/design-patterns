import SystemAuth from "./SystemAuth.js";
import GoogleAuth from "./GoogleAuth.js";
import FacebookAuth from "./FacebookAuth.js";
import LoginSystem from "./LoginSystem.js";

// Testing for system auth
let auth = new SystemAuth();
let loginSystem = new LoginSystem(auth);
loginSystem.login("King", "King123");

// Testing for system auth
auth = new GoogleAuth();
loginSystem = new LoginSystem(auth);
loginSystem.login("Jack", "Jack123");

// Testing for system auth
auth = new FacebookAuth();
loginSystem = new LoginSystem(auth);
loginSystem.login("Queen", "Queen123");

