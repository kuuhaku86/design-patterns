from CPU import CPU
from VGA import VGA
from DebitCard import DebitCard
from CreditCard import CreditCard

cpu = CPU()
vga = VGA()

# Test for credit card visitor
creditCard = CreditCard()
cpu.accept(creditCard)
vga.accept(creditCard)

# Test for debit card visitor
debitCard = DebitCard()
cpu.accept(debitCard)
vga.accept(debitCard)

