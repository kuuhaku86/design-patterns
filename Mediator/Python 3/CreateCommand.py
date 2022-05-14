from Command import Command

class CreateCommand(Command):
  def describe(self):
    print("Creating file " + self.file)
