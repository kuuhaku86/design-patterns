require_relative "UserCollection"
require_relative "User"

userCollection = UserCollection.new

# Add user to collecton
user = User.new("David")
userCollection.add(user)
user = User.new("Jack")
userCollection.add(user)
user = User.new("King")
userCollection.add(user)

# Get iterator
iterator = userCollection.createIterator

while iterator.hasNext
    user = iterator.next
    user.describe
end
