<?php

interface IReportBuilder {
    public function buildContent();
    public function buildFile();
    public function getResult();
}