import 'IHTTPConnection.dart';
import 'IRPCConnection.dart';

abstract class IConnectionFactory {
  IHTTPConnection createHTTPConnection();
  IRPCConnection createRPCConnection();
}