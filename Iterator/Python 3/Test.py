from UserCollection import UserCollection
from User import User

userCollection = UserCollection()

# Add user to collecton
user = User("David")
userCollection.add(user)
user = User("Jack")
userCollection.add(user)
user = User("King")
userCollection.add(user)

# Get iterator
iterator = userCollection.createIterator()

while iterator.hasNext():
  user = iterator.next()
  user.describe()

