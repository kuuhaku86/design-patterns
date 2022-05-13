import IReportBuilder from "./IReportBuilder.js";
import Report from "./Report.js";

class ExcelReportBuilder extends IReportBuilder {
  buildContent() {
    if (!this.report) {
      this.report = new Report();
    }

    this.report.content = "Tables";
  }

  buildFile() {
    if (!this.report) {
      this.report = new Report();
    }

    this.report.filename = "Report.xlsx";
  }

  getResult() {
    return this.report;
  }
}

export default ExcelReportBuilder;