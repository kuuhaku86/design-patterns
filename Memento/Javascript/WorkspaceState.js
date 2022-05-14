class WorkspaceState {
  constructor(state) {
    this.__state = state;
  }

  get_state() {
    return this.__state;
  }
}

export default WorkspaceState;