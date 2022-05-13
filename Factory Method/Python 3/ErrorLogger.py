from ILogger import ILogger;
from datetime import datetime

class ErrorLogger(ILogger):
  def print(self, message):
    print("{} [ERROR]: {}".format(datetime.now().isoformat(), message))