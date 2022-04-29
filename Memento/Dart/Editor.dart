import 'WorkspaceState.dart';

class Editor {
  String? _state;

  void setState(String? state) {
    _state = state;
  }

  String? getState() {
    return _state;
  }

  WorkspaceState save() {
    return WorkspaceState(_state);
  }

  void restore(WorkspaceState? state) {
    if (state != null) {
      _state = state.getState;
    }
  }

  void describe() {
    print('${_state}');
  }
}
