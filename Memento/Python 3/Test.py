from Editor import Editor
from EditorHistoryCaretaker import EditorHistoryCaretaker

editor = Editor()
editorHistoryCaretaker = EditorHistoryCaretaker()

# Current: State-1
editor.set_state("State-1")
editor.print_state()

# Current: State-2
editor.set_state("State-2")
editor.print_state()

# Save current state to EditorHistoryCaretaker, should be State-2
state = editor.save()
editorHistoryCaretaker.add(state)

# Current: State-3
editor.set_state("State-3")
editor.print_state()

# Save current state to EditorHistoryCaretaker, should be State-3
state = editor.save()
editorHistoryCaretaker.add(state)

# Current: State-4
editor.set_state("State-4")
editor.print_state()

# Restore state with index 1 from EditorHistoryCaretaker, should be State-3
state = editorHistoryCaretaker.get(1)
editor.restore(state)
editor.print_state()

# Restore state with index 0 from EditorHistoryCaretaker, should be State-2
state = editorHistoryCaretaker.get(0)
editor.restore(state)
editor.print_state()

# Restore state with index 2 from EditorHistoryCaretaker, should be State-3
state = editorHistoryCaretaker.get(2)
editor.restore(state)
editor.print_state()
