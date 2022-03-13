package main

func main()  {
	var auth IAuth
	var loginSystem *LoginSystem

	// Test for system auth
	auth = &SystemAuth{}
	loginSystem = &LoginSystem{
		strategy: auth,
	}
	loginSystem.login("King", "King123")

	// Test for Google auth
	auth = &GoogleAuth{}
	loginSystem = &LoginSystem{
		strategy: auth,
	}
	loginSystem.login("Jack", "Jack123")

	// Test for Facebook auth
	auth = &FacebookAuth{}
	loginSystem = &LoginSystem{
		strategy: auth,
	}
	loginSystem.login("Queen", "Queen123")
}