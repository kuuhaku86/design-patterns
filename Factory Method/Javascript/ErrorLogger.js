import ILogger from "./ILogger.js";

class ErrorLogger extends ILogger {
  print(message) {
    console.log(`${(new Date()).toISOString()} [ERROR]: ${message}`);
  }
}

export default ErrorLogger;