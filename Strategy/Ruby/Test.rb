require_relative "SystemAuth"
require_relative "GoogleAuth"
require_relative "FacebookAuth"
require_relative "LoginSystem"

# Testing for system auth
auth = SystemAuth.new
loginSystem = LoginSystem.new(auth)
loginSystem.login("King", "King123")

# Testing for system auth
auth = GoogleAuth.new
loginSystem = LoginSystem.new(auth)
loginSystem.login("Jack", "Jack123")

# Testing for system auth
auth = FacebookAuth.new
loginSystem = LoginSystem.new(auth)
loginSystem.login("Queen", "Queen123")