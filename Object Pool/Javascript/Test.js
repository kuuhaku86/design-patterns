import ThreadPool from "./ThreadPool.js";

const threadPool = new ThreadPool();
let threads = [];

// Get threads
for (let index = 0; index < 3; index++) {
  threads.push(threadPool.get());
}

// Describe the threads
threads.forEach(thread => {
  thread.describe();
});

// Release threads
for (let index = 0; index < 3; index++) {
  const thread = threads.pop();
  threadPool.release(thread);
}

// Get threads
for (let index = 0; index < 4; index++) {
  threads.push(threadPool.get());
}

// Describe the threads
threads.forEach(thread => {
  thread.describe();
});