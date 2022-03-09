<?php

require_once "IReportBuilder.php";
require_once "Report.php";

class PDFReportBuilder implements IReportBuilder {
    private Report $report;

    public function buildContent()
    {
        if (!isset($this->report)) {
            $this->report = new Report;
        }

        $this->report->setContent("Summary");
    }

    public function buildFile()
    {
        if (!isset($this->report)) {
            $this->report = new Report;
        }

        $this->report->setFilename("Report.PDF");
    }

    public function getResult() {
        return $this->report;
    }
}