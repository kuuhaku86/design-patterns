import IExpression from "./IExpression.js";

class AndExpression extends IExpression {
  constructor(expression1, expression2) {
    super();
    this.expression1 = expression1;
    this.expression2 = expression2;
  }

  solve(context) {
    if (!context.includes("&&")) {
      return false;
    }

    return this.expression1.solve(context) && this.expression2.solve(context);
  }
}

export default AndExpression;