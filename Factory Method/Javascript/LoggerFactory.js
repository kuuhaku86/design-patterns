import ErrorLogger from "./ErrorLogger.js";
import InfoLogger from "./InfoLogger.js";
import WarningLogger from "./WarningLogger.js";
import LoggerType from "./LoggerType.js";

class LoggerFactory {
  create(type) {
    switch (type) {
      case LoggerType.InfoLogger:
        return new InfoLogger();

      case LoggerType.WarningLogger:
        return new WarningLogger();

      case LoggerType.ErrorLogger:
        return new ErrorLogger();
    
      default:
        return null;
        break;
    }
  }
}

export default LoggerFactory;