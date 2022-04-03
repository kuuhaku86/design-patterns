require_relative "Group"
require_relative "User"

group = Group.new

# Add user
user = User.new("Jack")
group.add(user)

# Add user
user = User.new("King")
group.add(user)

# Add user
user = User.new("Queen")
group.add(user)

# Test inspect
group.inspect