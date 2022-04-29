import 'AverageObserver.dart';
import 'IObserver.dart';
import 'MaxObserver.dart';
import 'Server.dart';

void main(List<String> args) {
  Server server = Server();
  IObserver averageObserver = AverageObserver();
  IObserver maxObserver = MaxObserver();

  // Attach Observer
  server.attach(averageObserver);
  server.attach(maxObserver);

  // Test update
  server.updateResources();
  server.describeResources();

  // Test update
  server.updateResources();
  server.describeResources();

  // Test update
  server.updateResources();
  server.describeResources();
}
