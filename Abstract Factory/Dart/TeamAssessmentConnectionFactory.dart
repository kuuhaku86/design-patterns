import 'IConnectionFactory.dart';
import 'IHTTPConnection.dart';
import 'IRPCConnection.dart';
import 'TeamAssessmentHTTPConnection.dart';
import 'TeamAssessmentRPCConnection.dart';

class TeamAssessmentConnectionFactory implements IConnectionFactory {
  @override
  IRPCConnection createRPCConnection() {
    return TeamAssessmentRPCConnection();
  }

  @override
  IHTTPConnection createHTTPConnection() {
    return TeamAssessmentHTTPConnection();
  }
}