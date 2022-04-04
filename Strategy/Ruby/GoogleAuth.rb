require_relative "IAuth"

class GoogleAuth < IAuth
    def authenticate(username, password)
        puts "Authenticated with Google authentication system"
        puts "#{username} authenticated successfully"
    end
end