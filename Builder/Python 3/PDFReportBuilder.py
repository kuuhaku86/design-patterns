from IReportBuilder import IReportBuilder
from Report import Report

class PDFReportBuilder(IReportBuilder):
  def __init__(self) -> None:
      super().__init__()

  def buildContent(self):
    if not self._report:
      self._report = Report()
    
    self._report.content = "Summary"

  def buildFile(self):
    if not self._report:
      self._report = Report()
    
    self._report.filename = "Report.pdf"

  def getResult(self):
    return self._report