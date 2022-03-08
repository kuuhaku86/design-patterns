<?php

require_once "IPrinter.php";

class Printer implements IPrinter {
    public function print() {
        echo "Printing the sheet\n";
    }
}