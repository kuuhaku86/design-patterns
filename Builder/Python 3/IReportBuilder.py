class IReportBuilder:
  def __init__(self) -> None:
    self._report = None

  def buildContent(self):
    raise NotImplementedError

  def buildFile(self):
    raise NotImplementedError

  def getResult(self):
    raise NotImplementedError