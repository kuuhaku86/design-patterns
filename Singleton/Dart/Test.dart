import 'Database.dart';

void main(List<String> args) {
  // Get instance
  Database? database = Database.getInstance();

  // Test the instance
  database?.describe();

  // Get instance
  database = Database.getInstance();

  // Test the instance
  database?.describe();
}