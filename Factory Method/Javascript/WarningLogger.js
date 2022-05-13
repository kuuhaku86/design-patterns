import ILogger from "./ILogger.js";

class WarningLogger extends ILogger {
  print(message) {
    console.log(`${(new Date()).toISOString()} [WARNING]: ${message}`);
  }
}

export default WarningLogger;
