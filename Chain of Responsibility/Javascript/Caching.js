import Handler from "./Handler.js";

class Caching extends Handler {
  constructor() {
    super();
    this.data = {};
  }

  execute(request) {
    if (this.data[request.route]) {
      console.log("Cached");

      return this.data[request.route];
    } else {
      const temp_data = this.next_handler.execute(request);
      this.data[request.route] = temp_data;

      return temp_data;
    }
  }
}

export default Caching;
