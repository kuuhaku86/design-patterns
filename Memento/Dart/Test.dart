import 'Editor.dart';
import 'EditorHistoryCaretaker.dart';
import 'WorkspaceState.dart';

void main(List<String> args) {
  var editor = Editor();
  var editorHistoryCaretaker = EditorHistoryCaretaker();

  // Current State Editor -> State-1
  editor.setState('State-1');
  editor.describe();

  // Current State Editor -> State-2
  editor.setState('State-2');
  editor.describe();

  // Save current state to EditorHistoryCaretaker, should be State-2
  WorkspaceState? tempWorkspaceState = editor.save();
  editorHistoryCaretaker.add(tempWorkspaceState);

  // Current State Editor -> State-3
  editor.setState('State-3');
  editor.describe();

  // Save current state to EditorHistoryCaretaker, should be State-3
  tempWorkspaceState = editor.save();
  editorHistoryCaretaker.add(tempWorkspaceState);

  // Current State Editor -> State-4
  editor.setState('State-4');
  editor.describe();

  // Restore state with index 1 from EditorHistoryCaretaker, should be State-3
  tempWorkspaceState = editorHistoryCaretaker.get(1);
  editor.restore(tempWorkspaceState);
  editor.describe();

  // Restore state with index 0 from EditorHistoryCaretaker, should be State-2
  tempWorkspaceState = editorHistoryCaretaker.get(0);
  editor.restore(tempWorkspaceState);
  editor.describe();

  // Restore state with index 2 from EditorHistoryCaretaker, should be State-3 because array length is smallest than index
  tempWorkspaceState = editorHistoryCaretaker.get(2);
  editor.restore(tempWorkspaceState);
  editor.describe();
}
