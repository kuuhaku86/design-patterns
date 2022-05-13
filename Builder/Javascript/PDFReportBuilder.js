import IReportBuilder from "./IReportBuilder.js";
import Report from "./Report.js";

class PDFReportBuilder extends IReportBuilder {
  buildContent() {
    if (!this.report) {
      this.report = new Report();
    }

    this.report.content = "Summary";
  }

  buildFile() {
    if (!this.report) {
      this.report = new Report();
    }

    this.report.filename = "Report.pdf";
  }

  getResult() {
    return this.report;
  }
}

export default PDFReportBuilder;
