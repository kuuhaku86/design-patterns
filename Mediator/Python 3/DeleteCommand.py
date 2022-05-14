from Command import Command

class DeleteCommand(Command):
  def describe(self):
    print("Deleting file " + self.file)
