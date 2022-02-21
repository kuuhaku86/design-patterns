package main

type EditorHistoryCaretaker struct {
	stateList []*WorkspaceState
}

func (editorHistoryCaretaker *EditorHistoryCaretaker) add(workspaceState *WorkspaceState) {
	editorHistoryCaretaker.stateList = append(editorHistoryCaretaker.stateList, workspaceState)
}

func (editorHistoryCaretaker *EditorHistoryCaretaker) get(index int) *WorkspaceState {
	if len(editorHistoryCaretaker.stateList) < 1 {
		return nil
	}

	if len(editorHistoryCaretaker.stateList) < index + 1 {
		return editorHistoryCaretaker.stateList[len(editorHistoryCaretaker.stateList) - 1]
	} else {
		return editorHistoryCaretaker.stateList[index]
	}
}
