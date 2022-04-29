import 'WorkspaceState.dart';

class EditorHistoryCaretaker {
  List<WorkspaceState> _states = [];

  void add(WorkspaceState? state) {
    if (state != null) {
      _states.add(state);
    }
  }

  WorkspaceState? get(int index) {
    if (index < 0 || _states.length < 1) {
      return null;
    }

    if (_states.length <= index) {
      return _states[_states.length - 1];
    } else {
      return _states[index];
    }
  }
}
