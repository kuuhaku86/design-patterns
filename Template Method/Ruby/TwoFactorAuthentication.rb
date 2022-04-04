class TwoFactorAuthentication
    def getData(username)
        raise NotImplementedError
    end

    def sendNotification(username)
        raise NotImplementedError
    end

    def match(username)
        raise NotImplementedError
    end

    def authenticate(username, password)
        getData(username)

        sendNotification(username)

        match(username)
    end
end