import 'ErrorLogger.dart';
import 'ILogger.dart';
import 'InfoLogger.dart';
import 'LoggerType.dart';
import 'WarningLogger.dart';

class LoggerFactory {
  ILogger? create(LoggerType type) {
    switch (type) {
      case LoggerType.InfoLogger:
        return InfoLogger();
        break;

      case LoggerType.ErrorLogger:
        return ErrorLogger();
        break;

      case LoggerType.WarningLogger:
        return WarningLogger();
        break;

      default:
    }
  }
}
