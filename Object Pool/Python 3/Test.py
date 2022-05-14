from ThreadPool import ThreadPool

threadPool = ThreadPool()
threads = []

# Get threads
for i in range(3):
  threads.append(threadPool.get())

# Describe the threads
for thread in threads:
  thread.describe()

# Release threads
for i in range(3):
  thread = threads.pop()
  threadPool.release(thread)

# Get threads
for i in range(4):
  threads.append(threadPool.get()) 

# Describe the threads
for thread in threads:
  thread.describe()