from IPlayer import IPlayer

class CounterTerrorist(IPlayer):
  def setMission(self, mission):
    self.__mission = mission

  def doMission(self):
    print("Counter Terrorist doing Task : {}".format(self.__mission))