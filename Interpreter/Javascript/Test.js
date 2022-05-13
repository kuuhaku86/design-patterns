import TerminalExpression from "./TerminalExpression.js";
import OrExpression from "./OrExpression.js";
import AndExpression from "./AndExpression.js";

const expression1 = new TerminalExpression("Condition1");
const expression2 = new TerminalExpression("Condition2");
const andExpression = new AndExpression(expression1, expression2);
const orExpression = new OrExpression(expression1, expression2);

// Check for and condition
console.log(andExpression.solve("Condition1 && Condition2"));
console.log(orExpression.solve("Condition1 && Condition2"));

// Check for or condition
console.log(andExpression.solve("Condition1 || Condition2"));
console.log(orExpression.solve("Condition1 || Condition2"));
