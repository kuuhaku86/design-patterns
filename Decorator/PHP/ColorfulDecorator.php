<?php

require_once "PrinterDecorator.php";
require_once "IPrinter.php";

class ColorfulDecorator extends PrinterDecorator {
    public function __construct(IPrinter $printer)
    {
        parent::__construct($printer);
    }

    public function print() {
        parent::print();
        echo "Printed with colorful color\n";
    }
}