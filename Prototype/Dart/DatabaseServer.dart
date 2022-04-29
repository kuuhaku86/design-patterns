import 'ServerPrototype.dart';
import 'dart:convert';

class DatabaseServer extends ServerPrototype {
  DatabaseServer() : super("Database");

  @override
  ServerPrototype clone() {
    return DatabaseServer();
  }
}

