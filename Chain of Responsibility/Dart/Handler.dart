import 'Request.dart';
import 'Response.dart';

abstract class Handler {
  Handler? next_handler;

  void setNextHandler(Handler? handler) {
    next_handler = handler;
  }

  Response? execute(Request? request);
}
