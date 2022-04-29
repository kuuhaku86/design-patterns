import 'ICommand.dart';

class Editor {
  List<ICommand> _commands = [];

  void input(ICommand command) {
    _commands.add(command);
  }

  void executeCommands() {
    for (var command in _commands) {
      command.execute();
    }

    _commands.clear();
  }
}