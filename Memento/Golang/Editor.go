package main

import (
	"fmt"
)

type Editor struct {
	state string
}

func (editor *Editor) setState(state string) {
	editor.state = state
}

func (editor *Editor) getState() string {
	return editor.state
}

func (editor *Editor) save() *WorkspaceState {
	return NewWorkspaceState(editor.getState())
}

func (editor *Editor) restore(workspaceState *WorkspaceState)  {
	if workspaceState != nil {
		editor.setState(workspaceState.getState())
	}
}

func (editor *Editor) print() {
	fmt.Println(editor.getState() + "\n\n")
}