import INetwork from "./INetwork.js";

class ProxyNetwork extends INetwork {
  constructor(network) {
    super();
    this.network = network;
    this.bannedSites = [
      "abc.com",
      "xyz.com"
    ];
  }

  connect(site) {
    if (this.bannedSites.indexOf(site) === -1) {
      this.network.connect(site);
    } else {
      console.log(`Connection to ${site} is not allowed.`);
    }
  }
}

export default ProxyNetwork;