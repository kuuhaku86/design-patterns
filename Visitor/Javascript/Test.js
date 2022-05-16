import CPU from "./CPU.js";
import VGA from "./VGA.js";
import DebitCard from "./DebitCard.js";
import CreditCard from "./CreditCard.js";

const cpu = new CPU();
const vga = new VGA();

// Test for credit card visitor
const creditCard = new CreditCard();
cpu.accept(creditCard);
vga.accept(creditCard);

// Test for debit card visitor
const debitCard = new DebitCard();
cpu.accept(debitCard);
vga.accept(debitCard);


