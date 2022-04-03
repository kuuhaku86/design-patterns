require_relative "User"
require_relative "NullUser"

users = [
    User.new("Jack"),
    NullUser.new,
    User.new("King"),
    User.new("Queen"),
    NullUser.new
]

# Check for buy method
users.each do |user|
    user.buy
end

# Check for nullability
users.each do |user|
    if user.isNull
        puts "This user is a null object"
    else
        puts "This user is not a null object"
    end
end