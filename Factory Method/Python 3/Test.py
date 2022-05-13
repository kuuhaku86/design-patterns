from LoggerFactory import LoggerFactory
from LoggerType import LoggerType
import time

loggerFactory = LoggerFactory()
message = "Message from the system"

# Test info logger
currentLogger = loggerFactory.create(LoggerType.InfoLogger)
currentLogger.print(message)
time.sleep(2)

# Test warning logger
currentLogger = loggerFactory.create(LoggerType.WarningLogger)
currentLogger.print(message)
time.sleep(2)

# Test error logger
currentLogger = loggerFactory.create(LoggerType.ErrorLogger)
currentLogger.print(message)
