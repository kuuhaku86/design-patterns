class DownloadManager:
  def __init__(self, state):
    self.current = state
  
  def set_state(self, state):
    self.current = state

  def action(self):
    self.current.action()