from TeamPromoConnectionFactory import TeamPromoConnectionFactory
from TeamAssessmentConnectionFactory import TeamAssessmentConnectionFactory

# Testing factory for Promo Team
currentFactory = TeamPromoConnectionFactory()
RPCConnection = currentFactory.createRPCConnection()
HTTPConnection = currentFactory.createHTTPConnection()

RPCConnection.callProcedure()
HTTPConnection.callAPI()

# Testing factory for Assessment Team
currentFactory = TeamAssessmentConnectionFactory()
RPCConnection = currentFactory.createRPCConnection()
HTTPConnection = currentFactory.createHTTPConnection()

RPCConnection.callProcedure()
HTTPConnection.callAPI()