import 'ApplicationServer.dart';
import 'DatabaseServer.dart';
import 'ServerPrototype.dart';

void main(List<String> args) {
  ServerPrototype databaseServer = DatabaseServer();
  ServerPrototype applicationServer = ApplicationServer();

  // Test database server
  ServerPrototype currentServer1 = databaseServer.clone();
  currentServer1.describe();
  ServerPrototype currentServer2 = databaseServer.clone();
  currentServer2.describe();

  // Test application server
  currentServer1 = applicationServer.clone();
  currentServer1.describe();
  currentServer2 = applicationServer.clone();
  currentServer2.describe();
}