package main

import (
	"fmt"
	"time"
)

type WarningLogger struct {}

func (logger WarningLogger) print(message string) {
	currentTime := time.Now()

	fmt.Println(currentTime.String(), " [WARNING]: ", message)
}