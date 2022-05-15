class Database:
  database = None

  def __init__(self):
    self.content = "User Data"
  
  @staticmethod
  def getInstance():
    if not Database.database:
      print("New database instance created")
      Database.database = Database()
    
    return Database.database
  
  def describe(self):
    print("The database contain:", self.content)