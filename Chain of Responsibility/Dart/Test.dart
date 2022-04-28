import 'Authentication.dart';
import 'Authorization.dart';
import 'Caching.dart';
import 'Handler.dart';
import 'Request.dart';
import 'Response.dart';
import 'System.dart';

void main(List<String> args) {
  Handler authentication = Authentication();
  Handler authorization = Authorization();
  Handler caching = Caching();
  Handler system = System();

  authentication.setNextHandler(authorization);
  authorization.setNextHandler(caching);
  caching.setNextHandler(system);

  print("Test unauthenticated");
  Request request = Request(false, false, "/");
  Response? response = authentication.execute(request);

  print(response?.describe());

  print("\nTest unauthorized");
  request = Request(true, false, "/");
  response = authentication.execute(request);

  print(response?.describe());

  print("\nTest Get to The System");
  request = Request(true, true, "/test");
  response = authentication.execute(request);

  print(response?.describe());

  print("\nTest Cached");
  request = Request(true, true, "/test");
  response = authentication.execute(request);

  print(response?.describe());
}
