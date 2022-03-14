package main

func main()  {
	cpu := &CPU{}
	vga := &VGA{}
	var payment IPayment

	// Test for credit card visitor
	payment = &CreditCard{}
	cpu.accept(payment)
	vga.accept(payment)

	// Test for debit card visitor
	payment = &DebitCard{}
	cpu.accept(payment)
	vga.accept(payment)
}