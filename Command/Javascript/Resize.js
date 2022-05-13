import ICommand from "./ICommand.js";

class Resize extends ICommand {
  constructor(target, percentage) {
    super();
    this.target = target;
    this.percentage = percentage;
  }

  execute() {
    this.target.resize(this.percentage);
  }
}

export default Resize;