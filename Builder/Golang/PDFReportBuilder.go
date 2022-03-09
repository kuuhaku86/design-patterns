package main

type PDFReportBuilder struct {
	report *Report
}

func (pdfReportBuilder *PDFReportBuilder) buildContent() {
	if pdfReportBuilder.report == nil {
		pdfReportBuilder.report = &Report{}
	}

	pdfReportBuilder.report.setContent("Summary")
}

func (pdfReportBuilder *PDFReportBuilder) buildFile() {
	if pdfReportBuilder.report == nil {
		pdfReportBuilder.report = &Report{}
	}

	pdfReportBuilder.report.setFilename("Report.pdf")
}

func (pdfReportBuilder *PDFReportBuilder) getResult() *Report {
	return pdfReportBuilder.report
}