package main

import "fmt"

type TeamAssessmentRPCConnection struct {}

func (teamAssessmentRPCConnection *TeamAssessmentRPCConnection) callProcedure()  {
	fmt.Println("Calling Procedure from Assessment Team")
}