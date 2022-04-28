import 'IReportBuilder.dart';
import 'Report.dart';

class ExcelReportBuilder implements IReportBuilder {
  Report? _report;

  @override
  void buildContent() {
    if (_report == null) {
      _report = Report();
    }

    _report?.setContent("Tables");
  }

  @override
  void buildFile() {
    if (_report == null) {
      _report = Report();
    }

    _report?.setFilename("Report.xlsx");
  }

  @override
  Report? getResult() {
    return _report;
  }
}
