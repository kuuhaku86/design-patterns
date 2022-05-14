import UserCollection from "./UserCollection.js";
import User from "./User.js";

const userCollection = new UserCollection();

// Add user to collecton
let user = new User("David");
userCollection.add(user);
user = new User("Jack");
userCollection.add(user);
user = new User("King");
userCollection.add(user);

// Get iterator
const iterator = userCollection.createIterator()

while (iterator.hasNext()) {
  user = iterator.next();
  user.describe();
}


