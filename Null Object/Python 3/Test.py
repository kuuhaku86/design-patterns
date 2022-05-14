from User import User
from NullUser import NullUser

users = [
    User("Jack"),
    NullUser(),
    User("King"),
    User("Queen"),
    NullUser()
]

# Check for buy method
for user in users:
      user.buy()

# Check for nullability
for user in users:
  if user.isNull():
    print("User is a null object")
  else:
    print("User is not a null object")