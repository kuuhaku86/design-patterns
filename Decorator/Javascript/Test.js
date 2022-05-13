import Printer from "./Printer.js";
import ColorfulDecorator from "./ColorfulDecorator.js";
import MonochromeDecorator from "./MonochromeDecorator.js";

const printer = new Printer()
const colorfulDecorator = new ColorfulDecorator(printer)
const monochromeDecorator = new MonochromeDecorator(printer)

// Test for colorful decorator
colorfulDecorator.print()

// Test for monochrome decorator
monochromeDecorator.print()
