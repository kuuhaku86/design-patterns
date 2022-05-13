import ICommand from "./ICommand.js";

class Inspect extends ICommand {
  constructor(target) {
    super();
    this.target = target;
  }

  execute() {
    this.target.inspect();
  }
}

export default Inspect;