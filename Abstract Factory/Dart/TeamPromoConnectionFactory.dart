import 'IConnectionFactory.dart';
import 'IRPCConnection.dart';
import 'IHTTPConnection.dart';
import 'TeamPromoHTTPConnection.dart';
import 'TeamPromoRPCConnection.dart';

class TeamPromoConnectionFactory implements IConnectionFactory {
  @override
  IHTTPConnection createHTTPConnection() {
    return TeamPromoHTTPConnection();
  }

  @override
  IRPCConnection createRPCConnection() {
    return TeamPromoRPCConnection();
  }
}
