from IAuth import IAuth

class SystemAuth(IAuth):
  def authenticate(self, username, password):
    print("Authenticated with own authentication system")
    print("{} authenticated successfully".format(username))
