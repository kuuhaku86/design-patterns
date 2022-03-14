package main

import "fmt"

type TwoFactorEmail struct {}

func (twoFactor *TwoFactorEmail) getData(username string)  {
	fmt.Println("Getting email data for", username)
}

func (twoFactor *TwoFactorEmail) sendNotification(username string)  {
	fmt.Println("Sending email to", username)
}

func (twoFactor *TwoFactorEmail) match(username string)  {
	fmt.Println("Matching email code from", username)
}