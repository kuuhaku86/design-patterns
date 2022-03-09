<?php

require_once "IReportBuilder.php";

class Reporter {
    private IReportBuilder $builder;

    public function __construct(IReportBuilder $builder)
    {
        $this->builder = $builder;
    }

    public function createReport() {
        $this->builder->buildContent();
        $this->builder->buildFile();

        return $this->builder->getResult();
    }
}