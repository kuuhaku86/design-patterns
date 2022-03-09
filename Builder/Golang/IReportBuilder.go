package main

type IReportBuilder interface {
	buildContent()
	buildFile()
	getResult() *Report
}