import IState from "./IState.js";

class ContinueState extends IState {
  action() {
    console.log("Download continued");
  }
}

export default ContinueState;