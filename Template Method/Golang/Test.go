package main

func main()  {
	var twoFactorAuthentication *TwoFactorAuthentication
	var twoFactor ITwoFactorAuthentication 

	// Testing two factor for email
	twoFactor = &TwoFactorEmail{}
	twoFactorAuthentication = &TwoFactorAuthentication{
		twoFactor: twoFactor,
	}
	twoFactorAuthentication.authenticate("King", "King123")

	// Testing two factor for phone
	twoFactor = &TwoFactorPhone{}
	twoFactorAuthentication = &TwoFactorAuthentication{
		twoFactor: twoFactor,
	}
	twoFactorAuthentication.authenticate("Jack", "Jack123")
}