import IHTTPConnection from "./IHTTPConnection.js";

class TeamPromoHTTPConnection extends IHTTPConnection {
  callAPI() {
    console.log("Calling API from Promo Team");
  }
}

export default TeamPromoHTTPConnection;