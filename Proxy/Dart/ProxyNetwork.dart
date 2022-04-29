import 'INetwork.dart';

class ProxyNetwork implements INetwork {
  INetwork? _network;
  List<String> _bannedSites = ["abc.com", "xyz.com"];

  ProxyNetwork(this._network);

  @override
  void connect(String sites) {
    if (_bannedSites.contains(sites)) {
      print("Site $sites blocked");
      return;
    }

    _network!.connect(sites);
    
  }
}
