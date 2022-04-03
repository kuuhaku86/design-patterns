require_relative "LoggerFactory"
require_relative "LoggerType"

loggerFactory = LoggerFactory.new
message = "Message from the system"

# Test info logger
currentLogger = loggerFactory.create(LoggerType::InfoLoggerType)
currentLogger.print(message)
sleep(2)

# Test warning logger
currentLogger = loggerFactory.create(LoggerType::WarningLoggerType)
currentLogger.print(message)
sleep(2)

# Test error logger
currentLogger = loggerFactory.create(LoggerType::ErrorLoggerType)
currentLogger.print(message)