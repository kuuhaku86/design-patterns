import IConnectionFactory from "./IConnectionFactory.js";
import TeamAssessmentRPCConnection from "./TeamAssessmentRPCConnection.js";
import TeamAssessmentHTTPConnection from "./TeamAssessmentHTTPConnection.js";

class TeamAssessmentConnectionFactory extends IConnectionFactory {
  createRPCConnection() {
    return new TeamAssessmentRPCConnection();
  }

  createHTTPConnection() {
    return new TeamAssessmentHTTPConnection();
  }
}

export default TeamAssessmentConnectionFactory;