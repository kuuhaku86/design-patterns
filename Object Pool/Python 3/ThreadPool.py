from Thread import Thread

class ThreadPool:
  def __init__(self):
    self.threads = []
    self.thread_count = 2

    for i in range(1, self.thread_count + 1):
      self.threads.append(Thread(i))
  
  def get(self):
    thread = None

    if len(self.threads) > 0:
      thread = self.threads[0]
      del self.threads[0]
    else:
      self.thread_count += 1
      thread = Thread(self.thread_count)
    
    return thread
  
  def release(self, thread):
    self.threads.append(thread)