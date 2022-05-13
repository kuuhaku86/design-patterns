import ExcelReportBuilder from "./ExcelReportBuilder.js";
import PDFReportBuilder from "./PDFReportBuilder.js";
import Reporter from "./Reporter.js";

// Testing for ExcelReportBuilder
let currentBuilder = new ExcelReportBuilder();
let currentReporter = new Reporter(currentBuilder);

let report = currentReporter.createReport();
report.describe();

// Testing for PDFReportBuilder
currentBuilder = new PDFReportBuilder();
currentReporter = new Reporter(currentBuilder);

report = currentReporter.createReport();
report.describe();