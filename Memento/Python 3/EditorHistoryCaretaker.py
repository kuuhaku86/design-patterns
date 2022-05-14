from WorkspaceState import WorkspaceState

class EditorHistoryCaretaker:
  def __init__(self):
    self.states = []
  
  def add(self, state):
    self.states.append(state)
  
  def get(self, index):
    if len(self.states) < 1:
      return None
    
    if index < len(self.states):
      return self.states[index]
    else:
      return self.states[-1]