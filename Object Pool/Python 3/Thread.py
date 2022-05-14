class Thread:
  def __init__(self, number):
    self.number = number
  
  def describe(self):
    print("This is Thread number", self.number)