package main

import "fmt"

type TwoFactorPhone struct {}

func (twoFactor *TwoFactorPhone) getData(username string)  {
	fmt.Println("Getting phone data for", username)
}

func (twoFactor *TwoFactorPhone) sendNotification(username string)  {
	fmt.Println("Sending sms to", username)
}

func (twoFactor *TwoFactorPhone) match(username string)  {
	fmt.Println("Matching sms code from", username)
}