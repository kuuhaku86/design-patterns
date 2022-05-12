import IRPCConnection from "./IRPCConnection.js";

class TeamPromoRPCConnection extends IRPCConnection {
  callProcedure() {
    console.log("Calling procedure from Promo Team");
  }
}

export default TeamPromoRPCConnection;