package main

type WorkspaceState struct {
	State string
}

func NewWorkspaceState(state string) *WorkspaceState {
	workspaceState := &WorkspaceState{
		State: state,
	}

	return workspaceState
}

func (workspaceState *WorkspaceState) getState() string {
	return workspaceState.State
}