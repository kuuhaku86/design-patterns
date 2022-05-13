from IReportBuilder import IReportBuilder
from Report import Report

class ExcelReportBuilder(IReportBuilder):
  def buildContent(self):
    if not self._report:
      self._report = Report()
    
    self._report.content = "Tables"

  def buildFile(self):
    if not self._report:
      self._report = Report()
    
    self._report.filename = "Report.xlsx"

  def getResult(self):
    return self._report