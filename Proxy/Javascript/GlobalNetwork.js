import INetwork from "./INetwork.js";

class GlobalNetwork extends INetwork {
  connect(site) {
    console.log(`Connected to ${site}`);
  }
}

export default GlobalNetwork;