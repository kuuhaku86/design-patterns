class Handler {
  set_next_handler(handler) {
    this.next_handler = handler;
  }

  execute(request) {
    throw new Error("Method not implemented.");
  }
}

export default Handler;