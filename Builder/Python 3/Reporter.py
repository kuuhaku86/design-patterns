class Reporter:
  def __init__(self, builder):
    self.__builder = builder
  
  def createReport(self):
    self.__builder.buildFile()
    self.__builder.buildContent()

    return self.__builder.getResult()