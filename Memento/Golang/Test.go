package main

func main() {
	editor := Editor{}
	editorHistoryCaretaker := EditorHistoryCaretaker{}

	// Current State Editor -> State-1
	editor.setState("State-1")
	editor.print()

	// Current State Editor -> State-2
	editor.setState("State-2")
	editor.print()

	// Save current state to EditorHistoryCaretaker, should be State-2
	tempWorkspaceState := editor.save()
	editorHistoryCaretaker.add(tempWorkspaceState)

	// Current State Editor -> State-3
	editor.setState("State-3")
	editor.print()

	// Save current state to EditorHistoryCaretaker, should be State-3
	tempWorkspaceState = editor.save()
	editorHistoryCaretaker.add(tempWorkspaceState)

	// Current State Editor -> State-4
	editor.setState("State-4")
	editor.print()

	// Restore state with index 1 from EditorHistoryCaretaker, should be State-3 
	tempWorkspaceState = editorHistoryCaretaker.get(1)
	editor.restore(tempWorkspaceState)
	editor.print()

	// Restore state with index 0 from EditorHistoryCaretaker, should be State-2 
	tempWorkspaceState = editorHistoryCaretaker.get(0)
	editor.restore(tempWorkspaceState)
	editor.print()

	// Restore state with index 2 from EditorHistoryCaretaker, should be State-3 because array length is smallest than index
	tempWorkspaceState = editorHistoryCaretaker.get(2)
	editor.restore(tempWorkspaceState)
	editor.print()
}