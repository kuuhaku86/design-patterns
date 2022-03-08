<?php

require_once('Printer.php');
require_once('ColorfulDecorator.php');
require_once('MonochromeDecorator.php');

class Test {
    public static function main() {
        $printer = new Printer;
        $colorfulDecorator = new ColorfulDecorator($printer);
        $monochromeDecorator = new MonochromeDecorator($printer);

        // Test for colorful decorator
        $colorfulDecorator->print();

        // Test for monochrome decorator
        $monochromeDecorator->print();
    }
}

Test::main();

