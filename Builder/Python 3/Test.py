from ExcelReportBuilder import ExcelReportBuilder
from PDFReportBuilder import PDFReportBuilder
from Reporter import Reporter

# Testing for excel report builder
currentBuilder = ExcelReportBuilder()
currentReporter = Reporter(currentBuilder)

report = currentReporter.createReport()
report.describe()

# Testing for PDF report builder
currentBuilder = PDFReportBuilder()
currentReporter = Reporter(currentBuilder)

report = currentReporter.createReport()
report.describe()

