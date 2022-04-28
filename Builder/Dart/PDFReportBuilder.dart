import 'IReportBuilder.dart';
import 'Report.dart';

class PDFReportBuilder implements IReportBuilder {
  Report? _report;

  @override
  void buildContent() {
    if (_report == null) {
      _report = Report();
    }

    _report?.setContent("Summary");
  }

  @override
  void buildFile() {
    if (_report == null) {
      _report = Report();
    }

    _report?.setFilename("Report.pdf");
  }

  @override
  Report? getResult() {
    return _report;
  }
}
