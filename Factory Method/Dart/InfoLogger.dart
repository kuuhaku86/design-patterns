import 'ILogger.dart';

class InfoLogger implements ILogger {
  @override
  void printing(String message) {
    var time = DateTime.now().toIso8601String();
    print("$time [Info]: $message");
  }
}
