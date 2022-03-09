package main

type ExcelReportBuilder struct {
	report *Report
}

func (excelReportBuilder *ExcelReportBuilder) buildContent() {
	if excelReportBuilder.report == nil {
		excelReportBuilder.report = &Report{}
	}

	excelReportBuilder.report.setContent("Tables")
}

func (excelReportBuilder *ExcelReportBuilder) buildFile() {
	if excelReportBuilder.report == nil {
		excelReportBuilder.report = &Report{}
	}

	excelReportBuilder.report.setFilename("Report.xlsx") 
}

func (excelReportBuilder *ExcelReportBuilder) getResult() *Report {
	return excelReportBuilder.report
}
