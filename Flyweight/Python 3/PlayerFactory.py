from CounterTerrorist import CounterTerrorist
from Terrorist import Terrorist


class PlayerFactory:
  def __init__(self):
    self.__players = {}
  
  def createPlayer(self, type):
    if type in self.__players:
      return self.__players[type]
    else:
      player = None

      if type == "Terrorist":
        player = Terrorist()
        self.__players[type] = player
      else:
        player = CounterTerrorist()
        self.__players[type] = player
      
      return player
