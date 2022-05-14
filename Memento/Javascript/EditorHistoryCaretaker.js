import WorkspaceState from "./WorkspaceState.js";

class EditorHistoryCaretaker {
  constructor() {
    this.__states = [];
  }

  add(state) {
    this.__states.push(state);
  }

  get(index) {
    if (this.__states.length < 1) {
      return null;
    }

    if (index < this.__states.length) {
      return this.__states[index];
    } else {
      return this.__states[this.__states.length - 1];
    }
  }
}

export default EditorHistoryCaretaker;