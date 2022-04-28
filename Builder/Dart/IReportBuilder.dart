import 'Report.dart';

abstract class IReportBuilder {
  void buildContent();
  void buildFile();
  Report? getResult();
}
