import 'ILogger.dart';
import 'LoggerFactory.dart';
import 'LoggerType.dart';

void main(List<String> args) {
  LoggerFactory loggerFactory = LoggerFactory();
  String message = "Message from the system";

  // Test for info logger
  ILogger? currentLogger = loggerFactory.create(LoggerType.InfoLogger);
  currentLogger?.printing(message);

  // Test for warning logger
  currentLogger = loggerFactory.create(LoggerType.WarningLogger);
  currentLogger?.printing(message);

  // Test for error logger
  currentLogger = loggerFactory.create(LoggerType.ErrorLogger);
  currentLogger?.printing(message);
}
