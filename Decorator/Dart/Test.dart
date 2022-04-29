import 'ColorfulDecorator.dart';
import 'IPrinter.dart';
import 'MonochromeDecorator.dart';
import 'Printer.dart';

void main(List<String> args) {
  IPrinter printer = Printer();
  ColorfulDecorator colorfulDecorator = ColorfulDecorator(printer);
  MonochromeDecorator monochromeDecorator = MonochromeDecorator(printer);

  // Test for colorful decorator
  colorfulDecorator.printing();

  // Test for monochrome decorator
  monochromeDecorator.printing();
}
