class DownloadManager {
  constructor(state) {
    this.current = state;
  }

  set_state(state) {
    this.current = state;
  }

  action() {
    this.current.action();
  }
}

export default DownloadManager;