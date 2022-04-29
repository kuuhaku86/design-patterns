import 'IPrinter.dart';
import 'PrinterDecorator.dart';

class MonochromeDecorator extends PrinterDecorator {
  MonochromeDecorator(IPrinter printer) : super(printer);

  @override
  void printing() {
    super.printing();
    print("Printed with monochrome color");
  }
}
