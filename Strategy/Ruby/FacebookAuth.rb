require_relative "IAuth"

class FacebookAuth < IAuth
    def authenticate(username, password)
        puts "Authenticated with Facebook authentication system"
        puts "#{username} authenticated successfully"
    end
end