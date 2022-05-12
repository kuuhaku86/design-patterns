import IRPCConnection from "./IRPCConnection.js";

class TeamAssessmentRPCConnection extends IRPCConnection {
  callProcedure() {
    console.log("Calling procedure from Assessment Team");
  }
}

export default TeamAssessmentRPCConnection;