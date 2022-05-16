from IAuth import IAuth

class FacebookAuth(IAuth):
  def authenticate(self, username, password):
    print("Authenticated with Facebook authentication system")
    print("{} authenticated successfully".format(username))