class Report:
  def __init__(self):
    self.filename = None
    self.content = None

  def describe(self):
    if self.filename:
      print("The name of file is {}".format(self.filename))
    else:
      print("The file doesn't have a name")
    
    if self.content:
      print("The content of file is {}".format(self.content))
    else:
      print("The file doesn't have a content")