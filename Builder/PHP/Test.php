<?php
require_once('ExcelReportBuilder.php');
require_once('PDFReportBuilder.php');
require_once('Reporter.php');

class Test {
    public static function main() {
        // Testing for Excel report builder
        $currentBuilder = new ExcelReportBuilder;
        $currentReporter = new Reporter($currentBuilder);

        $report = $currentReporter->createReport();
        $report->describe();

        // Testing for PDF report builder
        $currentBuilder = new PDFReportBuilder;
        $currentReporter = new Reporter($currentBuilder);

        $report = $currentReporter->createReport();
        $report->describe();
    }
}

Test::main();