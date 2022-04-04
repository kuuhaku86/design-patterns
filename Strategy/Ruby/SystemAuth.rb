require_relative "IAuth"

class SystemAuth < IAuth
    def authenticate(username, password)
        puts "Authenticated with own authentication system"
        puts "#{username} authenticated successfully"
    end
end