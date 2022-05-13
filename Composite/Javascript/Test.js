import Group from "./Group.js";
import User from "./User.js";

let group = new Group()

// Add user
let user = new User("Jack")
group.add(user)

// Add user
user = new User("King")
group.add(user)

// Add user
user = new User("Queen")
group.add(user)

// Test inspect
group.inspect()
