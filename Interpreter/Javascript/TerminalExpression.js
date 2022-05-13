import IExpression from "./IExpression.js";

class TerminalExpression extends IExpression {
  constructor(data) {
    super();
    this.data = data;
  }

  solve(context) {
    if (!context.includes(this.data)) {
      return false;
    }

    return true;
  }
}

export default TerminalExpression;