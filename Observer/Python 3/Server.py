import random

class Server:
  def __init__(self):
    self.observers = []
    self.cpu = 0
    self.ram = 0
  
  def attach(self, observer):
    self.observers.append(observer)
  
  def updateResources(self):
    self.cpu = random.randint(1, 100)
    self.ram = random.randint(1, 100)

    for observer in self.observers:
      observer.update(self.cpu, self.ram)
  
  def describeResources(self):
    print("Current CPU: {}\nCurrent RAM: {}".format(self.cpu, self.ram))
