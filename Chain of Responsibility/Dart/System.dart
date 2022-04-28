import 'Handler.dart';
import 'Request.dart';
import 'Response.dart';

import 'dart:math';

class System extends Handler {
  @override
  Response? execute(Request? request) {
    print("In System");

    return Response(200, 'Ok', Random().nextInt(100));
  }
}
