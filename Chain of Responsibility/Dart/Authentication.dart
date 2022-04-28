import 'Handler.dart';
import 'Response.dart';
import 'Request.dart';

class Authentication extends Handler {
  @override
  Response? execute(Request? request) {
    if (request?.is_authenticated == true) {
      print("Authenticated");

      return next_handler?.execute(request);
    } else {
      print("Unauthenticated");

      return Response(
        403, 
        'Unauthenticated', 
        null
      );
    }
  }
}
