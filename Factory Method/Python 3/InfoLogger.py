from ILogger import ILogger;
from datetime import datetime

class InfoLogger(ILogger):
  def print(self, message):
    print("{} [INFO]: {}".format(datetime.now().isoformat(), message))
