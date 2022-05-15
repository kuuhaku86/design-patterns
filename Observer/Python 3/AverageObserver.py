from IObserver import IObserver

class AverageObserver(IObserver):
  def __init__(self):
    super().__init__()
    self.averageCPU = 0.0
    self.averageRAM = 0.0
    self.counter = 0
    self.resources = []
    
  def update(self, cpu, ram):
    self.resources.append((cpu, ram))
    tempCPU = 0.0
    tempRAM = 0.0
    self.counter += 1

    for resource in self.resources:
      tempCPU += resource[0]
      tempRAM += resource[1]
    
    self.averageCPU = tempCPU / self.counter
    self.averageRAM = tempRAM / self.counter

    print("Current Average CPU: {}\nCurrent Average RAM: {}".format(self.averageCPU, self.averageRAM))
