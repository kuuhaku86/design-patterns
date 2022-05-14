from WorkspaceState import WorkspaceState

class Editor:
  def __init__(self):
    self.state = None
  
  def set_state(self, state):
    self.state = state
  
  def save(self):
    if self.state is None:
      print('No state, nothing to save')
    else:
      return WorkspaceState(self.state)
  
  def restore(self, state):
    self.state = state.get_state()

  def print_state(self):
    if self.state is None:
      print('No state')
    else:
      print(self.state)