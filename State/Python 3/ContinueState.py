from IState import IState

class ContinueState(IState):
  def action(self):
    print("Download continued")