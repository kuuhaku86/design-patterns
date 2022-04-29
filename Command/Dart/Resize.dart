import 'ICommand.dart';
import 'Image.dart';

class Resize implements ICommand {
  Image? _target;
  int? _percentage;

  Resize(this._target, this._percentage);

  @override
  void execute() {
    var percentage = _percentage!;

    if (percentage != null) {
      _target?.resize(percentage);
    }    
  }
}
