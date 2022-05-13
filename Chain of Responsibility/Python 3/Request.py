class Request:
  def __init__(self, authenticated, authorized, route):
    self.authenticated = authenticated
    self.authorized = authorized
    self.route = route