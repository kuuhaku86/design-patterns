import 'IRPCConnection.dart';

class TeamPromoRPCConnection implements IRPCConnection {
  @override
  void callProcedure() {
    print('Calling procedure from Promo Team');
  }
}