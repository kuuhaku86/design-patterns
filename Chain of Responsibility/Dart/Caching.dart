import 'Handler.dart';
import 'Response.dart';
import 'Request.dart';

class Caching extends Handler {
  Map<String?, Response?> _cache = {};

  @override
  Response? execute(Request? request) {
    if (_cache[request?.get_route] != null) {
      print("Cached");

      return _cache[request?.get_route];
    } else {
      print("Uncached");

      Response? temp = next_handler?.execute(request);
      _cache[request?.get_route] = temp;

      return temp;
    }
  }
}
