import LoggerFactory from "./LoggerFactory.js";
import LoggerType from "./LoggerType.js";

const loggerFactory = new LoggerFactory();
const message = "Message from the system";

// Test info logger
let currentLogger = loggerFactory.create(LoggerType.InfoLogger);
currentLogger.print(message);
sleep(2000);

// Test warning logger
currentLogger = loggerFactory.create(LoggerType.WarningLogger);
currentLogger.print(message);
sleep(2000);

// Test error logger
currentLogger = loggerFactory.create(LoggerType.ErrorLogger);
currentLogger.print(message);

function sleep(ms) {
    var unixtime_ms = new Date().getTime();
    while(new Date().getTime() < unixtime_ms + ms) {}
}