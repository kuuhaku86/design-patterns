from TwoFactorAuthentication import TwoFactorAuthentication

class TwoFactorEmail(TwoFactorAuthentication):
  def getData(self, username):
    print('Getting email data for {}'.format(username))

  def sendNotification(self, username):
    print('Sending email notification to {}'.format(username))

  def match(self, username):
    print('Matching {} with the email code'.format(username))