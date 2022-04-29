import 'IPrinter.dart';

class PrinterDecorator implements IPrinter {
  IPrinter _printer;

  PrinterDecorator(this._printer);

  @override
  void printing() {
    _printer.printing();
  }
}