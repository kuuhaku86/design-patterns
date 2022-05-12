from IRPCConnection import IRPCConnection

class TeamAssessmentRPCConnection(IRPCConnection):
  def callProcedure(self):
    print("Calling procedure from Assessment Team")