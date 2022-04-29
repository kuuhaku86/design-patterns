import 'ILogger.dart';

class WarningLogger implements ILogger {
  @override
  void printing(String message) {
    var time = DateTime.now().toIso8601String();
    print("$time [Warning]: $message");
  }
}
