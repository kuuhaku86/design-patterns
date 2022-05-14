import User from "./User.js";
import NullUser from "./NullUser.js";

const users = [
    new User("Jack"),
    new NullUser(),
    new User("King"),
    new User("Queen"),
    new NullUser()
];

// Check for buy method
users.forEach(user => {
  user.buy();
});

// Check for nullability
users.forEach(user => {
  if (user.isNull()) {
    console.log("User is a null object");
  } else {
    console.log("User is not a null object");
  }
});