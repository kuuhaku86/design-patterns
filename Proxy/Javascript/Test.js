import GlobalNetwork from "./GlobalNetwork.js";
import ProxyNetwork from "./ProxyNetwork.js";

const globalNetwork = new GlobalNetwork();
const proxyNetwork = new ProxyNetwork(globalNetwork);

// Test for unblocked sites
proxyNetwork.connect("www.google.com");
proxyNetwork.connect("www.yahoo.com");

// Test for blocked sites
proxyNetwork.connect("abc.com");
proxyNetwork.connect("xyz.com");

