package main

type LoggerFactory struct {}

func (loggerFactory *LoggerFactory) create(loggerType LoggerType) ILogger {
	switch loggerType {
		case InfoLoggerType :
			return InfoLogger{}

		case WarningLoggerType :
			return WarningLogger{}

		case ErrorLoggerType :
			return ErrorLogger{}

		default:
			return nil
	}
}