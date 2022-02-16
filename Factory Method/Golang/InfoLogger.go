package main

import (
	"fmt"
	"time"
)

type InfoLogger struct {}

func (logger InfoLogger) print(message string) {
	currentTime := time.Now()

	fmt.Println(currentTime.String(), " [INFO]: ", message)
}