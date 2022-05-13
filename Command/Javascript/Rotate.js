import ICommand from "./ICommand.js";

class Rotate extends ICommand {
  constructor(target, degree) {
    super();
    this.target = target;
    this.degree = degree;
  }

  execute() {
    this.target.rotate(this.degree);
  }
}

export default Rotate;
