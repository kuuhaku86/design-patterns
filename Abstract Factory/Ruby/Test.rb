require_relative "TeamPromoConnectionFactory.rb"
require_relative "TeamAssessmentConnectionFactory.rb"

# Testing factory for Promo Team
currentFactory = TeamPromoConnectionFactory.new
RPCConnection = currentFactory.createRPCConnection
HTTPConnection = currentFactory.createHTTPConnection

RPCConnection.callProcedure
HTTPConnection.callAPI

# Testing factory for Assessment Team
currentFactory = TeamAssessmentConnectionFactory.new
RPCConnection = currentFactory.createRPCConnection
HTTPConnection = currentFactory.createHTTPConnection

RPCConnection.callProcedure
HTTPConnection.callAPI