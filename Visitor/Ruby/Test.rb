require_relative "CPU"
require_relative "VGA"
require_relative "DebitCard"
require_relative "CreditCard"

cpu = CPU.new
vga = VGA.new

# Test for credit card visitor
creditCard = CreditCard.new
cpu.accept(creditCard)
vga.accept(creditCard)

# Test for debit card visitor
debitCard = DebitCard.new
cpu.accept(debitCard)
vga.accept(debitCard)
