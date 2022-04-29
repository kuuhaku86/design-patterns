import 'IExpression.dart';

class OrExpression implements IExpression {
  IExpression? _expression1, _expression2;

  OrExpression(this._expression1, this._expression2);

  @override
  bool solve(String context) {
    if (!context.contains("||")) {
      return false;
    }

    return _expression1!.solve(context) || _expression2!.solve(context);
  }
}

