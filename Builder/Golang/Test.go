package main

func main()  {
	var builder IReportBuilder
	var reporter Reporter
	var report *Report

	// Testing for Excel report builder
	builder = &ExcelReportBuilder{}
	reporter = Reporter{
		builder: builder,
	}
	report = reporter.createReport()

	report.describe()

	// Testing for PDF report builder
	builder = &PDFReportBuilder{}
	reporter = Reporter{
		builder: builder,
	}
	report = reporter.createReport()

	report.describe()


}