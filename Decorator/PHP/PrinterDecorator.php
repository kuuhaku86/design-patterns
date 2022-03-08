<?php

require_once "IPrinter.php";

class PrinterDecorator implements IPrinter {
    private IPrinter $printer;

    public function __construct(IPrinter $printer)
    {
        $this->printer = $printer;
    }

    public function print() {
        $this->printer->print();
    }
}