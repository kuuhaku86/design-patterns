require_relative "Editor"
require_relative "EditorHistoryCaretaker"

editor = Editor.new
editorHistoryCaretaker = EditorHistoryCaretaker.new

# Current: State-1
editor.state = "State-1"
editor.print

# Current: State-2
editor.state = "State-2"
editor.print

# Save current state to EditorHistoryCaretaker, should be State-2
state = editor.save
editorHistoryCaretaker.add(state)

# Current: State-3
editor.state = "State-3"
editor.print

# Save current state to EditorHistoryCaretaker, should be State-3
state = editor.save
editorHistoryCaretaker.add(state)

# Current: State-4
editor.state = "State-4"
editor.print

# Restore state with index 1 from EditorHistoryCaretaker, should be State-3
state = editorHistoryCaretaker.get(1)
editor.restore(state)
editor.print

# Restore state with index 0 from EditorHistoryCaretaker, should be State-2
state = editorHistoryCaretaker.get(0)
editor.restore(state)
editor.print

# Restore state with index 2 from EditorHistoryCaretaker, should be State-3
state = editorHistoryCaretaker.get(2)
editor.restore(state)
editor.print