import Thread from "./Thread.js";

class ThreadPool {
  constructor() {
    this.threads = [];
    this.counter = 2;

    for (let index = 0; index < this.counter; index++) {
      this.threads.push(new Thread(index + 1));
    }
  }

  get() {
    let thread = null;

    if (this.threads.length > 0) {
      thread = this.threads.shift();
    } else {
      this.counter++;
      thread = new Thread(this.counter);
    }

    return thread;
  }

  release(thread) {
    this.threads.push(thread);
  }
}

export default ThreadPool;