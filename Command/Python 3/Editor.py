class Editor:
  def __init__(self):
    self.__commandList = []
  
  def input(self, command):
    self.__commandList.append(command)
  
  def executeCommands(self):
    for command in self.__commandList:
      command.execute()
    
    self.__commandList = []
