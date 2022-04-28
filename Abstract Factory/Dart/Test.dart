import 'IConnectionFactory.dart';
import 'IHTTPConnection.dart';
import 'IRPCConnection.dart';
import 'TeamAssessmentConnectionFactory.dart';
import 'TeamPromoConnectionFactory.dart';

void main(List<String> args) {
  // Testing for assessment team
  IConnectionFactory factory = TeamAssessmentConnectionFactory();

  IHTTPConnection httpConnection = factory.createHTTPConnection();
  IRPCConnection rpcConnection = factory.createRPCConnection();

  httpConnection.callAPI();
  rpcConnection.callProcedure();

  // Testing for promo team
  factory = TeamPromoConnectionFactory();

  httpConnection = factory.createHTTPConnection();
  rpcConnection = factory.createRPCConnection();

  httpConnection.callAPI();
  rpcConnection.callProcedure();
}