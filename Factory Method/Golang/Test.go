package main

import (
	"time"
)

func main() {
	loggerFactory := LoggerFactory{}
	message := "Message from the system"

	// Test Info Logger
	currentLogger := loggerFactory.create(InfoLoggerType)
	currentLogger.print(message)

	time.Sleep(2 * time.Second)

	// Test Warning Logger
	currentLogger = loggerFactory.create(WarningLoggerType)
	currentLogger.print(message)

	time.Sleep(2 * time.Second)

	// Test Error Logger
	currentLogger = loggerFactory.create(ErrorLoggerType)
	currentLogger.print(message)
}