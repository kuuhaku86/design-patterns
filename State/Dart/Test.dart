import 'ContinueState.dart';
import 'DownloadManager.dart';
import 'PauseState.dart';

void main(List<String> args) {
  var continueState = ContinueState();
  var pauseState = PauseState();
  var downloadManager = DownloadManager(continueState);

  // Test pause state
  downloadManager.setState(pauseState);
  downloadManager.action();

  // Test continue state
  downloadManager.setState(continueState);
  downloadManager.action();
}