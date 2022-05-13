import Handler from "./Handler.js";
import Response from "./Response.js";

class Authorization extends Handler {
  execute(request) {
    if (request.authorized === true) {
      console.log("Authorized");

      return this.next_handler.execute(request);
    } else {
      return new Response(403, "Unauthorized", null);
    }
  }
}

export default Authorization;
