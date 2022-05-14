import Editor from "./Editor.js";
import EditorHistoryCaretaker from "./EditorHistoryCaretaker.js";

const editor = new Editor();
const editorHistoryCaretaker = new EditorHistoryCaretaker();

// Current: State-1
editor.set_state("State-1");
editor.print();

// Current: State-2
editor.set_state("State-2");
editor.print();

// Save current state to EditorHistoryCaretaker, should be State-2
let state = editor.save();
editorHistoryCaretaker.add(state);

// Current: State-3
editor.set_state("State-3");
editor.print();

// Save current state to EditorHistoryCaretaker, should be State-3
state = editor.save();
editorHistoryCaretaker.add(state);

// Current: State-4
editor.set_state("State-4");
editor.print();

// Restore state with index 1 from EditorHistoryCaretaker, should be State-3
state = editorHistoryCaretaker.get(1);
editor.restore(state);
editor.print();

// Restore state with index 0 from EditorHistoryCaretaker, should be State-2
state = editorHistoryCaretaker.get(0);
editor.restore(state);
editor.print();

// Restore state with index 2 from EditorHistoryCaretaker, should be State-3
state = editorHistoryCaretaker.get(2);
editor.restore(state);
editor.print();

