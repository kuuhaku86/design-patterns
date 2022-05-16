class TwoFactorAuthentication:
  def getData(self, username):
    raise NotImplementedError
  
  def sendNotification(self, username):
    raise NotImplementedError
  
  def match(self, username):
    raise NotImplementedError

  def authenticate(self, username, password):
    self.getData(username)

    self.sendNotification(username)

    self.match(username)