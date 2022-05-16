from IAuth import IAuth

class GoogleAuth(IAuth):
  def authenticate(self, username, password):
    print("Authenticated with Google authentication system")
    print("{} authenticated successfully".format(username))
