package main

func main() {
	var currentFactory IConnectionFactory
	var rpcConnection IRPCConnection
	var httpConnection IHTTPConnection

	// Testing factory for Promo Team
	currentFactory = &TeamPromoConnectionFactory{}
	rpcConnection = currentFactory.createRPCConnection()
	httpConnection = currentFactory.createHTTPConnection()

	rpcConnection.callProcedure()
	httpConnection.callAPI()

	// Testing factory for Assessment Team
	currentFactory = &TeamAssessmentConnectionFactory{}
	rpcConnection = currentFactory.createRPCConnection()
	httpConnection = currentFactory.createHTTPConnection()

	rpcConnection.callProcedure()
	httpConnection.callAPI()
}