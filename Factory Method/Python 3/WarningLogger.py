from ILogger import ILogger;
from datetime import datetime

class WarningLogger(ILogger):
  def print(self, message):
    print("{} [WARNING]: {}".format(datetime.now().isoformat(), message))