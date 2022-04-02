require_relative "ExcelReportBuilder"
require_relative "PDFReportBuilder"
require_relative "Reporter"

# Testing for Excel report builder
currentBuilder = ExcelReportBuilder.new
currentReporter = Reporter.new(currentBuilder)

report = currentReporter.createReport
report.describe

# Testing for PDF report builder
currentBuilder = PDFReportBuilder.new
currentReporter = Reporter.new(currentBuilder)

report = currentReporter.createReport
report.describe