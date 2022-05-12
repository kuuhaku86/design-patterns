import IConnectionFactory from "./IConnectionFactory.js";
import TeamPromoHTTPConnection from "./TeamPromoHTTPConnection.js";
import TeamPromoRPCConnection from "./TeamPromoRPCConnection.js";

class TeamPromoConnectionFactory extends IConnectionFactory {
  createRPCConnection() {
    return new TeamPromoRPCConnection();
  }

  createHTTPConnection() {
    return new TeamPromoHTTPConnection();
  }
}

export default TeamPromoConnectionFactory;