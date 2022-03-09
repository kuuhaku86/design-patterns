package main

import "fmt"

type TeamAssessmentHTTPConnection struct {}

func (teamAssessmentHTTPConnection *TeamAssessmentHTTPConnection) callAPI()  {
	fmt.Println("Calling API from Assessment Team")
}