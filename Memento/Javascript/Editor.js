import WorkspaceState from "./WorkspaceState.js";

class Editor {
  constructor() {
    this.__state = null;
  }

  set_state(state) {
    this.__state = state;
  }

  save() {
    if (this.__state) {
      return new WorkspaceState(this.__state);
    } else {
      console.log("No state to save");
    }
  }

  restore(state) {
    this.__state = state.get_state();
  }

  print() {
    console.log(this.__state);
  }
}

export default Editor;