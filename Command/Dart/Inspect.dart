import 'ICommand.dart';
import 'Image.dart';

class Inspect implements ICommand {
  Image? _target;

  Inspect(this._target);

  @override
  void execute() {
    _target?.inspect();
  }
}
