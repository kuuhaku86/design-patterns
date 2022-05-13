from Group import Group
from User import User

group = Group()

# Add user
user = User("Jack")
group.add(user)

# Add user
user = User("King")
group.add(user)

# Add user
user = User("Queen")
group.add(user)

# Test inspect
group.inspect()