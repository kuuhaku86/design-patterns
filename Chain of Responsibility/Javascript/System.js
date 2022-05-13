import Handler from "./Handler.js";
import Response from "./Response.js";

class System extends Handler {
  execute(request) {
    return new Response(200, "OK", Math.floor(Math.random() * 100));
  }
}

export default System;