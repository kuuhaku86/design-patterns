from urllib import response
from requests import request
from Authentication import Authentication
from Authorization import Authorization
from Caching import Caching
from System import System
from Request import Request

authentication = Authentication()
authorization = Authorization()
caching = Caching()
system = System()

authentication.set_next_handler(authorization)
authorization.set_next_handler(caching)
caching.set_next_handler(system)

print("Test Unauthenticated")
request = Request(False, False, "/test")
response = authentication.execute(request)
response.describe()

print("Test Unauthorized")
request = Request(True, False, "/test")
response = authentication.execute(request)
response.describe()

print("Test Get to System")
request = Request(True, True, "/test")
response = authentication.execute(request)
response.describe()

print("Test Cached")
request = Request(True, True, "/test")
response = authentication.execute(request)
response.describe()