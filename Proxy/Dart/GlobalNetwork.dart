import 'INetwork.dart';

class GlobalNetwork implements INetwork {
  @override
  void connect(String sites) {
    print("Connected to $sites");
  }
}