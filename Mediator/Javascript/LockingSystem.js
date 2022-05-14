class LockingSystem {
  constructor() {
    this.status = false;
    this.command = null;
  }

  lock(command) {
    this.status = true;
    this.command = command;
  }

  unlock() {
    this.status = false;
    this.command = null;
  }

  checkStatus() {
    if (this.status) {
      console.log("The system is currently used by:")
      this.command.describe();
    }

    return this.status;
  }
}

export default LockingSystem;