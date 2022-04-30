import 'TwoFactorAuthentication.dart';

class TwoFactorEmail extends TwoFactorAuthentication {
  @override
  void getData(String username) {
    print("Getting email data for $username");
  }

  @override
  void match(String username) {
    print("Matching email code from $username");
  }

  @override
  void sendNotification(String username) {
    print("Sending email to $username");
  }
}