import 'IExpression.dart';

class TerminalExpression implements IExpression {
  String? _data;

  TerminalExpression(this._data);

  @override
  bool solve(String context) {
    return context.contains(_data!);
  }
}
