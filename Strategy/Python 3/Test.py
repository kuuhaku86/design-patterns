from SystemAuth import SystemAuth
from GoogleAuth import GoogleAuth
from FacebookAuth import FacebookAuth
from LoginSystem import LoginSystem

# Testing for system auth
auth = SystemAuth()
loginSystem = LoginSystem(auth)
loginSystem.login("King", "King123")

# Testing for system auth
auth = GoogleAuth()
loginSystem = LoginSystem(auth)
loginSystem.login("Jack", "Jack123")

# Testing for system auth
auth = FacebookAuth()
loginSystem = LoginSystem(auth)
loginSystem.login("Queen", "Queen123")
