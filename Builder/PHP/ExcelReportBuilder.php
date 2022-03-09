<?php

require_once "IReportBuilder.php";
require_once "Report.php";

class ExcelReportBuilder implements IReportBuilder {
    private Report $report;

    public function buildContent()
    {
        if (!isset($this->report)) {
            $this->report = new Report;
        }

        $this->report->setContent("Tables");
    }

    public function buildFile()
    {
        if (!isset($this->report)) {
            $this->report = new Report;
        }

        $this->report->setFilename("Report.xlsx");
    }

    public function getResult() {
        return $this->report;
    }
}