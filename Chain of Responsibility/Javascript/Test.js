import Authentication from "./Authentication.js";
import Authorization from "./Authorization.js";
import Caching from "./Caching.js";
import System from "./System.js";
import Request from "./Request.js";

const authentication = new Authentication();
const authorization = new Authorization();
const caching = new Caching();
const system = new System();

authentication.set_next_handler(authorization);
authorization.set_next_handler(caching);
caching.set_next_handler(system);

console.log("Test Unauthenticated");
let request = new Request(false, false, "/test");
let response = authentication.execute(request);
response.describe();

console.log("Test Unauthorized");
request = new Request(true, false, "/test");
response = authentication.execute(request);
response.describe();

console.log("Test Get to System");
request = new Request(true, true, "/test");
response = authentication.execute(request);
response.describe();

console.log("Test Cached");
request = new Request(true, true, "/test");
response = authentication.execute(request);
response.describe();