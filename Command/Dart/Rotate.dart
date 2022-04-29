import 'ICommand.dart';
import 'Image.dart';

class Rotate implements ICommand {
  Image? _target;
  int? _degree;

  Rotate(this._target, this._degree);

  @override
  void execute() {
    var degree = _degree!;

    if (degree != null) {
      _target?.rotate(degree);
    }    
  }
}
