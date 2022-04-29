import 'GlobalNetwork.dart';
import 'INetwork.dart';
import 'ProxyNetwork.dart';

void main(List<String> args) {
  INetwork globalNetwork = GlobalNetwork();
  INetwork proxyNetwork = ProxyNetwork(globalNetwork);

  // Test for unblocked sites
  proxyNetwork.connect("google.com");
  proxyNetwork.connect("yahoo.com");

  // Test for blocked sites
  proxyNetwork.connect("abc.com");
  proxyNetwork.connect("xyz.com");
}
