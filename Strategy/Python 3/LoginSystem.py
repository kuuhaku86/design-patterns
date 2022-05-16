class LoginSystem:
  def __init__(self, strategy):
    self.strategy = strategy
  
  def login(self, username, password):
    print("Starting authentication process...")
    self.strategy.authenticate(username, password)