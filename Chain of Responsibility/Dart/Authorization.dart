import 'Handler.dart';
import 'Response.dart';
import 'Request.dart';

class Authorization extends Handler {
  @override
  Response? execute(Request? request) {
    if (request?.is_authorized == true) {
      print("Authorized");

      return next_handler?.execute(request);
    } else {
      print("Unauthorized");

      return Response(
        403, 
        'Unauthorized', 
        null
      );
    }
  }
}

