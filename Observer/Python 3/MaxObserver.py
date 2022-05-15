from IObserver import IObserver

class MaxObserver(IObserver):
  def __init__(self):
    super().__init__()
    self.maxCPU = 0
    self.maxRAM = 0
  
  def update(self, cpu , ram):
    self.maxCPU = max([self.maxCPU, cpu])
    self.maxRAM = max([self.maxRAM, ram])

    print("Current Max CPU: {}\nCurrent Max RAM: {}".format(self.maxCPU, self.maxRAM))
