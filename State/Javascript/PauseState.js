import IState from "./IState.js";

class PauseState extends IState {
  action() {
    console.log("Download paused");
  }
}

export default PauseState;
