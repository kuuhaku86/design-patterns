import 'TwoFactorAuthentication.dart';

class TwoFactorPhone extends TwoFactorAuthentication {
  @override
  void getData(String username) {
    print("Getting phone data for $username");
  }

  @override
  void match(String username) {
    print("Matching sms code from $username");
  }

  @override
  void sendNotification(String username) {
    print("Sending sms to $username");
  }
}
