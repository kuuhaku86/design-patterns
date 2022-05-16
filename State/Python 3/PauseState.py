from IState import IState

class PauseState(IState):
  def action(self):
    print("Download paused")