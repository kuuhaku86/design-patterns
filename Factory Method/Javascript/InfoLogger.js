import ILogger from "./ILogger.js";

class InfoLogger extends ILogger {
  print(message) {
    console.log(`${(new Date()).toISOString()} [INFO]: ${message}`);
  }
}

export default InfoLogger;
