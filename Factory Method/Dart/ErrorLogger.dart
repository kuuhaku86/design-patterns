import 'ILogger.dart';

class ErrorLogger implements ILogger {
  @override
  void printing(String message) {
    var time = DateTime.now().toIso8601String();
    print("$time [Error]: $message");
  }
}
