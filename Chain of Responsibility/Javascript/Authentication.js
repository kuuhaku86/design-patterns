import Handler from "./Handler.js";
import Response from "./Response.js";

class Authentication extends Handler {
  execute(request) {
    if (request.authenticated === true) {
      console.log("Authenticated");

      return this.next_handler.execute(request);
    } else {
      return new Response(403, "Unauthenticated", null);
    }
  }
}

export default Authentication;