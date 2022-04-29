import 'AndExpression.dart';
import 'OrExpression.dart';
import 'TerminalExpression.dart';

void main(List<String> args) {
  var expression1 = TerminalExpression("Condition1");
  var expression2 = TerminalExpression("Condition2");
  var andExpression = AndExpression(expression1, expression2);
  var orExpression = OrExpression(expression1, expression2);

  // Check for and condition
  print(andExpression.solve("Condition1 && Condition2"));
  print(orExpression.solve("Condition1 && Condition2"));

  // Check fo or condition
  print(andExpression.solve("Condition1 || Condition2"));
  print(orExpression.solve("Condition1 || Condition2"));
}
