import TeamAssessmentConnectionFactory from "./TeamAssessmentConnectionFactory.js";
import TeamPromoConnectionFactory from "./TeamPromoConnectionFactory.js";

// Testing factory for Promo Team
let currentFactory = new TeamPromoConnectionFactory();
let RPCConnection = currentFactory.createRPCConnection();
let HTTPConnection = currentFactory.createHTTPConnection();

RPCConnection.callProcedure();
HTTPConnection.callAPI();

// Testing factory for Assessment Team
currentFactory = new TeamAssessmentConnectionFactory();
RPCConnection = currentFactory.createRPCConnection();
HTTPConnection = currentFactory.createHTTPConnection();

RPCConnection.callProcedure();
HTTPConnection.callAPI();