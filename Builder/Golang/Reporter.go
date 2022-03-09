package main

type Reporter struct {
	builder IReportBuilder
}

func (reporter *Reporter) createReport() *Report  {
	reporter.builder.buildContent()
	reporter.builder.buildFile()

	return reporter.builder.getResult()
}