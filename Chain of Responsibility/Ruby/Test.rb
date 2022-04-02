require_relative "Authentication"
require_relative "Authorization"
require_relative "Caching"
require_relative "System"
require_relative "Request"

authentication = Authentication.new
authorization = Authorization.new
caching = Caching.new
system = System.new

authentication.set_next_handler(authorization)
authorization.set_next_handler(caching)
caching.set_next_handler(system)

puts "Test Unauthenticated"
request = Request.new(route: "/test", authenticated: false, authorized: false)
response = authentication.execute(request)
response.describe

puts "Test Unauthorized"
request = Request.new(route: "/test", authenticated: true, authorized: false)
response = authentication.execute(request)
response.describe

puts "Test Get to System"
request = Request.new(route: "/test", authenticated: true, authorized: true)
response = authentication.execute(request)
response.describe

puts "Test Cached"
request = Request.new(route: "/test", authenticated: true, authorized: true)
response = authentication.execute(request)
response.describe