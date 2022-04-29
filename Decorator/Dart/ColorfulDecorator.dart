import 'IPrinter.dart';
import 'PrinterDecorator.dart';

class ColorfulDecorator extends PrinterDecorator {
  ColorfulDecorator(IPrinter printer) : super(printer);

  @override
  void printing() {
    super.printing();
    print("Printed with colorful color");
  }
}
