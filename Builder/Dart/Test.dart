import 'ExcelReportBuilder.dart';
import 'IReportBuilder.dart';
import 'PDFReportBuilder.dart';
import 'Report.dart';
import 'Reporter.dart';

void main(List<String> args) {
  // Testing for Excel report builder
  IReportBuilder currentBuilder = ExcelReportBuilder();
  Reporter currentReporter = Reporter(currentBuilder);

  Report? report = currentReporter.getReport();
  report?.describe();

  // Testing for PDF report builder
  currentBuilder = PDFReportBuilder();
  currentReporter = Reporter(currentBuilder);

  report = currentReporter.getReport();
  report?.describe();

}
