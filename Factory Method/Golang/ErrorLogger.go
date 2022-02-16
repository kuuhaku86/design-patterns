package main

import (
	"fmt"
	"time"
)

type ErrorLogger struct {}

func (logger ErrorLogger) print(message string) {
	currentTime := time.Now()

	fmt.Println(currentTime.String(), " [ERROR]: ", message)
}