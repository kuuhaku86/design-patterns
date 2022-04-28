import 'IReportBuilder.dart';
import 'Report.dart';

class Reporter {
  IReportBuilder? _builder;

  Reporter(this._builder);

  Report? getReport() {
    _builder?.buildContent();
    _builder?.buildFile();

    return _builder?.getResult();
  }
}
