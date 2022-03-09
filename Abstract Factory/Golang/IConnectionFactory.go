package main

type IConnectionFactory interface {
	createRPCConnection() IRPCConnection
	createHTTPConnection() IHTTPConnection
}