class Command {
  constructor(mediator, file) {
    this.mediator = mediator;
    this.file = file;
  }

  describe() {
    throw new Error("method not implemented");
  }

  execute() {
    if (this.mediator.checkStatus()) {
      console.log("Command not executed");
    } else {
      this.describe();
      this.mediator.lock(this);
      console.log("Command executed");
    }
  }

  finish() {
    this.mediator.unlock();
  }
}

export default Command;