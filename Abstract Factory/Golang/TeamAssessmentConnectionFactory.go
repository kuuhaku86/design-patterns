package main

type TeamAssessmentConnectionFactory struct {}

func (teamAssessmentConnectionFactory *TeamAssessmentConnectionFactory) createRPCConnection() IRPCConnection  {
	return &TeamAssessmentRPCConnection{}
}

func (teamAssessmentConnectionFactory *TeamAssessmentConnectionFactory) createHTTPConnection() IHTTPConnection  {
	return &TeamAssessmentHTTPConnection{}
}