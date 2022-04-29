import 'Editor.dart';
import 'ICommand.dart';
import 'Image.dart';
import 'Inspect.dart';
import 'Resize.dart';
import 'Rotate.dart';

void main(List<String> args) {
  Editor editor = Editor();
  Image image = Image(0, 1000);

  ICommand inspect = Inspect(image);
  ICommand resize = Resize(image, 20);
  ICommand rotate = Rotate(image, 30);

  // Inspect initial state
  editor.input(inspect);

  // Resize by 20 percent
  editor.input(resize);
  editor.input(inspect);

  // Rotate by 30 degree
  editor.input(rotate);
  editor.input(inspect);

  // Resize by 20 percent again
  editor.input(resize);
  editor.input(inspect);

  // Rotate by 30 degree again
  editor.input(rotate);
  editor.input(inspect);

  // Execute all commands
  editor.executeCommands();
}
