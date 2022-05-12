from IConnectionFactory import IConnectionFactory
from TeamAssessmentRPCConnection import TeamAssessmentRPCConnection
from TeamAssessmentHTTPConnection import TeamAssessmentHTTPConnection

class TeamAssessmentConnectionFactory:
  def createRPCConnection(self):
    return TeamAssessmentRPCConnection()
  
  def createHTTPConnection(self):
    return TeamAssessmentHTTPConnection()