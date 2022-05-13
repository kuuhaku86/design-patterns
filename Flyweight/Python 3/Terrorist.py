from IPlayer import IPlayer

class Terrorist(IPlayer):
  def setMission(self, mission):
    self.__mission = mission

  def doMission(self):
    print("Terrorist doing Task : {}".format(self.__mission))
