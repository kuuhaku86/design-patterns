from TwoFactorAuthentication import TwoFactorAuthentication

class TwoFactorPhone(TwoFactorAuthentication):
  def getData(self, username):
    print('Getting phone number data for {}'.format(username))

  def sendNotification(self, username):
    print('Sending SMS notification to {}'.format(username))

  def match(self, username):
    print('Matching {} with the SMS code'.format(username))
