from ErrorLogger import ErrorLogger
from InfoLogger import InfoLogger
from WarningLogger import WarningLogger
from LoggerType import LoggerType

class LoggerFactory:
  def create(self, type):
    if type == LoggerType.InfoLogger:
      return InfoLogger()
    elif type == LoggerType.WarningLogger:
      return WarningLogger()
    elif type == LoggerType.ErrorLogger:
      return ErrorLogger()
    
    return None