package main

type ITwoFactorAuthentication interface {
	getData(string)
	sendNotification(string)
	match(string)
}

type TwoFactorAuthentication struct {
	twoFactor ITwoFactorAuthentication
}

func (twoFactorAuthentication *TwoFactorAuthentication) authenticate(username, password string)  {
	twoFactorAuthentication.twoFactor.getData(username)

	twoFactorAuthentication.twoFactor.sendNotification(username)

	twoFactorAuthentication.twoFactor.match(username)
}