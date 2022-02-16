package main

type LoggerType int

const (
	InfoLoggerType    LoggerType = iota 
	WarningLoggerType                   
	ErrorLoggerType                     
)