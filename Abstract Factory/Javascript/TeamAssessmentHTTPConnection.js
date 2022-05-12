import IHTTPConnection from "./IHTTPConnection.js";

class TeamAssessmentHTTPConnection extends IHTTPConnection {
  callAPI() {
    console.log("Calling API from Assessment Team");
  }
}

export default TeamAssessmentHTTPConnection;