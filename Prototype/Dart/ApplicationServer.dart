import 'ServerPrototype.dart';
import 'dart:convert';

class ApplicationServer extends ServerPrototype {
  ApplicationServer() : super("Application");

  @override
  ServerPrototype clone() {
    return ApplicationServer();
  }
}
