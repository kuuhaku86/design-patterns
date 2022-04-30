import 'IState.dart';

class DownloadManager {
  IState? _current;

  DownloadManager(this._current);

  void setState(IState state) {
    _current = state;
  }

  void action() {
    _current?.action();
  }
}
